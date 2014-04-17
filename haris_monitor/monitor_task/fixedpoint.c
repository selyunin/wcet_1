/*
 * fixedpoint.c
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * 'interpolate' based on: http://www.azillionmonkeys.com/qed/sqroot.html, Jim Ulery
 * 'fft' based on: http://www.mathworks.com/products/fixed/demos.html?file=/products/demos/shipping/fixedpoint/fi_radix2fft_demo.html
 *
 * Fixed Point Routines: linear interpolation, square root, fast-fourier transform
 */
#include "fixedpoint.h"

const int16_t TWIDDLE_R64[64] = {
  4096,  4096,     0,  4096,  2896,     0, -2896,  4096,
  3784,  2896,  1567,     0, -1567, -2896, -3784,  4096,
  4017,  3784,  3405,  2896,  2275,  1567,   799,     0,
  -799, -1567, -2275, -2896, -3405, -3784, -4017,  4096,
  4076,  4017,  3919,  3784,  3612,  3405,  3166,  2896,
  2598,  2275,  1930,  1567,  1188,   799,   401,     0,
  -401,  -799, -1188, -1567, -1930, -2275, -2598, -2896,
 -3166, -3405, -3612, -3784, -3919, -4017, -4076,  4096
};

const int16_t TWIDDLE_I64[64] = {
     0,     0, -4096,     0, -2896, -4096, -2896,     0,
 -1567, -2896, -3784, -4096, -3784, -2896, -1567,     0,
  -799, -1567, -2275, -2896, -3405, -3784, -4017, -4096,
 -4017, -3784, -3405, -2896, -2275, -1567,  -799,     0,
  -401,  -799, -1188, -1567, -1930, -2275, -2598, -2896,
 -3166, -3405, -3612, -3784, -3919, -4017, -4076, -4096,
 -4076, -4017, -3919, -3784, -3612, -3405, -3166, -2896,
 -2598, -2275, -1930, -1567, -1188,  -799,  -401,     0
};

const int BIT_REVERSE64[64] = {
  0, 32, 16, 48,  8, 40, 24, 56,
  4, 36, 20, 52, 12, 44, 28, 60,
  2, 34, 18, 50, 10, 42, 26, 58,
  6, 38, 22, 54, 14, 46, 30, 62,
  1, 33, 17, 49,  9, 41, 25, 57,
  5, 37, 21, 53, 13, 45, 29, 61,
  3, 35, 19, 51, 11, 43, 27, 59,
  7, 39, 23, 55, 15, 47, 31, 63
};

/* @brief to simplify analysis for patmos */
__attribute__((always_inline))
static int16_t small_div(int16_t num, int16_t denom) {
  switch(denom) {
  case 1: return num;
  case 2: return (num/2);
  case 3: return (num/3);
  case 4: return (num/4);
  case 5: return (num/5);
  default: return (num/denom);
  }
}

/** @brief Linear interpolation for 16 bit integers
 *  @param xi1 first index, < xi
 *  @param xv1 first value
 *  @param xi2 second index, > xi
 *  @param xv2 second value
 *  @param xi  interpolated index, > xi1, < xi2
 *  @return interpolated value
 */
int16_t iinterpolate16(int xi1, int16_t xv1, int xi2, int16_t xv2, int xi)
{
	int di_i1 = xi  - xi1;
	int di_21 = xi2 - xi1;
	/* calculate:  (di_21-di_i1) (xv1/di_21) + di_i1 (xv2/di_21) */
	xv1 = small_div(xv1, di_21);
	xv1 *= (di_21-di_i1);
	xv2 = small_div(xv2, di_21);
	xv2 *= di_i1;
	return xv1+xv2;
}


/** @brief fixed point square root
  * @param val x
  * @return y with y^2 <= x < (y+1)^2
  */
uint32_t isqrt32u(uint32_t val) {
  /* taken from: http://www.azillionmonkeys.com/qed/sqroot.html */
  /* by Jim Ulery */
  int32_t temp, g=0, b = 0x8000, bshft = 15;
  do /* ai: loop here EXACTLY 16; */
  {
    if (val >= (temp = (((g << 1) + b)<<bshft--))) {
      g += b;
      val -= temp;
    }
  } while (b >>= 1);
  return g;
}


/** @brief Permutation of the elements in vs for FFT
 *  @param vs the value vector
 *  @param brv the bitreverse lookup table
 *  @param n the size of vs and brv (user register @n)
 */
static void bitreverse(int16_t* vs, const int* brv, int n);

/** @brief fixed point FFT
  * @param xr  real part of length n (input/output)
  * @param xi  imaginary part of length n (input/output)
  * @param brv bit reverse matrix of length n
  * @param wr  real part of twiddle factors of length n
  * @param wi  imaginary part of twiddle factors of length n
  * @param n   length of the input (user register @n)
  * @param t   log2(n) (user register @t)
  *
  * adapted from: http://www.mathworks.com/products/fixed/demos.html?file=/products/demos/shipping/fixedpoint/fi_radix2fft_demo.html
  *
  */

/* ai: instruction "fp_radix2fft_withscaling" is entered with @n = 64; */
/* ai: instruction "fp_radix2fft_withscaling" is entered with @t = 6; */
void fp_radix2fft_withscaling(int16_t* xr, int16_t* xi,
                              const int *bvr,
                              const int16_t* wr, const int16_t* wi,
                              int n, // @n
                              int t) // @t
{
  int32_t tempr, tempi;
  int q, j, k;
  int n1, n2, n3;
  int L, kL, r, L2;
  
  bitreverse(xr,bvr,n);
  bitreverse(xi,bvr,n);
  
  /*  Work out the loop bounds for the FFT transform */
  
  
  for (q=1; q<=t; q++)  
  { /* ai: loop here max (@t); */
	  /* ai: flow (here) <= 6; */
    L = 1; L <<= q;
    r = 1; r <<= (t-q);
    L2 = L>>1;
    kL = 0;
    
    
    for (k=0; k<r; k++) 
    { /* ai: loop here max 32; */
	  /* ai: flow (here) <= 63; */
      for (j=0; j<L2; j++)   
      {
	/* ai: loop here max 32; */
	n3     = kL + j;
	n2     = n3 + L2;
	n1     = L2 - 1 + j;
	/* ai: label here = "fp_radix2fft_withscaling_body"; */
	 /* ai: flow (here) <= 192; */
	tempr  = (int32_t)wr[n1]*(int32_t)xr[n2] - (int32_t)wi[n1]*(int32_t)xi[n2];
	tempi  = (int32_t)wr[n1]*(int32_t)xi[n2] + (int32_t)wi[n1]*(int32_t)xr[n2];
	xr[n2] = ((((int32_t)xr[n3])<<FP_FRAC) - tempr)>>(FP_FRAC+1);
	xi[n2] = ((((int32_t)xi[n3])<<FP_FRAC) - tempi)>>(FP_FRAC+1);
	xr[n3] = ((((int32_t)xr[n3])<<FP_FRAC) + tempr)>>(FP_FRAC+1);
	xi[n3] = ((((int32_t)xi[n3])<<FP_FRAC) + tempi)>>(FP_FRAC+1);
      }
      kL += L;
    }
  }
}

/** @brief Permutation of the elements in vs for FFT
 *  @param vs the value vector
 *  @param brv the bitreverse lookup table
 *  @param n the size of vs and brv
 *  User-Register: @n >= n
 */
/* ai: instruction "bitreverse" is entered with @n = 64; */
static void bitreverse(int16_t* vs, const int* brv, int n)
{
  int i;
  for(i = 0; i < n; i++)
  {
    /* ai: loop here MAX (@n); */
    int j = brv[i];
    if(i < j)
    {
      int16_t tmp = vs[i];
      vs[i]       = vs[j];
      vs[j]       = tmp;
    }
  }
}

