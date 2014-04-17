/*
 * fixedpoint.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * Fixed Point Routines: linear interpolation, square root, fast-fourier transform
 */
#ifndef FIXEDPOINT_H_G9EM7H5O
#define FIXEDPOINT_H_G9EM7H5O

#include "macros.h"

/* Fix point numbers library */

//! @brief The number of bits used for the fraction of fixed point numbers
#define FP_FRAC 12

#if (FP_FRAC & 1)
#error "fixedpoint.h: Fraction Length for Fixed Point has to be even"
#endif

//! @brief 16-bit fixed-point numbers
typedef int16_t fix16_t;

#define FP_INT(x)         (x<<FP_FRAC)
#define FP_TO_DOUBLE(x)   ((double)(x) / (1<<FP_FRAC))
#define FP_FROM_DOUBLE(x) ((fix16_t)(x*(1<<FP_FRAC)))
#define FP_SQRT(x)        (isqrt32u(x) << (FP_FRAC/2))

/** @brief Linear interpolation for 16 bit integers
 *  @param xi1 first index, < xi
 *  @param xv1 first value
 *  @param xi2 second index, > xi
 *  @param xv2 second value
 *  @param xi  interpolated index, > xi1, < xi2
 *  @return interpolated value
 */
int16_t iinterpolate16(int xi1, int16_t xv1, int xi2, int16_t xv2, int xi);

/** @brief fixed point square root
 * @param val x
 * @return y with y^2 <= x < (y+1)^2
 */
uint32_t isqrt32u(uint32_t val);

/** @brief fixed point FFT
  * @param xr  real part of length n (input/output)
  * @param xi  imaginary part of length n (input/output)
  * @param brv bit reverse matrix of length n
  * @param wr  real part of twiddle factors of length n
  * @param wi  imaginary part of twiddle factors of length n
  * @param n   length of the input (user register @n)
  * @param t   log2(n) (user register @t)
  */
void fp_radix2fft_withscaling(int16_t* xr, int16_t* xi,             // input
                              const int *brv,                       // bit reverse vector
                              const int16_t* wr, const int16_t* wi, // twiddle factors
                              int n,                                // length of the input
                              int t);                               // log2 of length of input

//! @brief 64-samples FFT twiddle factors, real part
extern const int16_t TWIDDLE_R64[64];

//! @brief 64-samples FFT twiddle factors, imaginary part
extern const int16_t TWIDDLE_I64[64];

//! @brief indices for 64-samples bit-reversal
extern const int BIT_REVERSE64[64];

#endif /* end of include guard: FIXEDPOINT_H_G9EM7H5O */
