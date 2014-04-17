/****************************************************************************
 * FFT transform, N = SAMPLE_COUNT
 ***************************************************************************/
/* ai: instruction "fft" is entered with @samplecount = 64; */
status_t fft(sample_buffer_t *buf, int16_t * fft_r_out, int16_t * fft_i_out)
{
  int i, offs;
  sample_value_t max = 0;
  int32_t multiplier;

  for(offs = -1; offs >= -MAX_CONSECUTIVE_MISSING; --offs) 
  { 
    /* ai: loop here max 4; */
    /* ai: flow (here) <=64; */
    if(! IS_VALUE_MISSING(sample_buffer_get(buf,offs))) break;
  }
  if(offs < -MAX_CONSECUTIVE_MISSING) return S_TOO_FEW_VALID_SAMPLES;

  /* Copy and normalize real-valued input */
  offs -= SAMPLE_COUNT-1;
  
  for(i = 0; i < SAMPLE_COUNT; i++)
  { 
    /* ai: loop here max (@samplecount); */
    /* ai: flow (here) <=64; */
    int16_t val = sample_buffer_get(buf,offs+i);
    if(IS_VALUE_MISSING(val)) return S_TOO_FEW_VALID_SAMPLES;
    if(val < 0) val = -val;
    else if(val > max) max = val;
  }
  if(max != 0)
  {
    multiplier = (((int32_t)NORM_MAX)<<16) / max;

   
    for(i = 0; i < SAMPLE_COUNT; i++)
    { 
      /* ai: loop here max @samplecount; */
      /* Normalize real-valued input */
	  /* ai: flow (here) <=64; */
      int32_t old_val = sample_buffer_get(buf,i-SAMPLE_COUNT);
      fft_r_out[i] = (int16_t)((old_val*multiplier) >> 16);
    }
  }

  /* Set imaginary input to 0 */
  /* memset(&fft_i_out[0], 0, SAMPLE_COUNT * sizeof(fft_i_out[0])); */

  
  for(i = 0; i < SAMPLE_COUNT; i++)
  {
    /* ai: loop here max (@samplecount); */
	/* ai: flow (here) <=64; */
    fft_i_out[i] = 0;
  }

  /* Run fixed-point FFT */
  /* ai: instruction here is entered with @n = 64; */
  /* ai: instruction here is entered with @t =  6; */
  fp_radix2fft_withscaling(
    &fft_r_out[0], &fft_i_out[0],
    BIT_REVERSE64, TWIDDLE_R64, TWIDDLE_I64,
    SAMPLE_COUNT, SAMPLE_COUNT_LOG2);
  return S_OK;
}
