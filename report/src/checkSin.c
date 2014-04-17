/* ai: LABEL (here) = "check_sin";*/
status_t check_sin(const void* params, const int16_t * fft_r, const int16_t* fft_i)
{
  int i;
  const check_sin_param_t *ps = (const check_sin_param_t*) params;
  sample_value_t f0,fhi, f;
  f0 = abs_complex(fft_r[0],fft_i[0]);
  /* 1 frequency should be above, the rest below the threshold */
  if(f0 > ps->base_threshold) return S_BAD_SPECTRUM;
  fhi = 0;
 
  for(i = 1; i < SAMPLE_COUNT>>1;i++)
  {
	 /* ai: loop here max 32; */

    f = abs_complex(fft_r[i],fft_i[i]);  /* ai: flow (here) <=32; */
    if(f > ps->noise_threshold) {
      if(fhi != 0) {
        return S_BAD_SPECTRUM;
      }
      fhi = f;
    }
  }
  if(fhi < ps->amplitude_minimum) return S_BAD_SPECTRUM;
  return S_OK;
}
