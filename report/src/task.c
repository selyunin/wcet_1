status_t task(input_t *input, state_t *state, const signal_spec_t* signal_spec)
{
  static int16_t fft_r[SAMPLE_COUNT];
  static int16_t fft_i[SAMPLE_COUNT];

  int16_t status;
  sample_buffer_t* sbuf = &state->sample_buffer;

  /* (1) merge samples and interpolate missing ones */
  merge_samples(input,sbuf);

  /* (2) normalize samples and perform fast fourier transform */
  status = fft(sbuf,&fft_r[0],&fft_i[0]);
  if(status != S_OK) return status;


  /* ai: instruction 0x25dc calls "check_sin", "check_square"; */
  status = checks[signal_spec->signal_type](signal_spec->signal_params, fft_r, fft_i);
  return status;
}
