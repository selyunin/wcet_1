/* ai: LABEL (here) = "check_square";*/
status_t check_square(const void* params, const int16_t * fft_r, const int16_t* fft_i)
{
  int i;
  const check_square_param_t* ps = (const check_square_param_t*)params;

  uint16_t base = abs_complex(fft_r[0],fft_i[0]);
  uint16_t top  = base;
  uint16_t f;
  int count = 0;
  if(base < ps->base_minimum) return S_BAD_SPECTRUM;


  for(i = 1; i < SAMPLE_COUNT>>1;i++)
  {
	  /* ai: loop here max 32; */
	  
    f = abs_complex(fft_r[i],fft_i[i]); /* ai: flow (here) <=32; */
    if(f > ps->noise_threshold) {
      count++;
      if(f > top) return S_BAD_SPECTRUM;
      top = f;
      if(count == 1) {
        if(f < ps->f1_minimum) return S_BAD_SPECTRUM;
      }
    }
  }
  if(count == 0) return S_BAD_SPECTRUM;
  return S_OK;
}
