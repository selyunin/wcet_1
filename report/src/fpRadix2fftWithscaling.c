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
