/****************************************************************************
 * Add (at most) in->inputcount new samples to the sample buffer
 * Interpolate missing samples if possible
 ***************************************************************************/
void merge_samples(input_t* in, sample_buffer_t* sbuf)
{
  int i, j, cnt, valid;
  sample_value_t  x;
  sample_value_t *xs;

  /* return if input has no samples */
  if(in->input_count <= 0) return;

  cnt = in->input_count;
  xs = in->input_samples;
  valid = sample_buffer_get_valid(sbuf);

  for(i = 0; i < cnt; i++)
  { 
    /* ai: loop here max inf; */
    x = xs[i];
        
    sample_buffer_set(sbuf,i,x);
    /* If the sample is not missing, interpolate the ones before if the range is acceptable */
    if(! IS_VALUE_MISSING(x))
    {
      /* Only interpolate if we interpolate at most MAX_CONSECUTIVE_MISSING samples */
      int missing_samples = i - valid - 1;
      if(missing_samples > 0 && missing_samples <= MAX_CONSECUTIVE_MISSING)
      {
        /* Calculate interpolated value for all samples in the range [valid+1,i-1] */
        int16_t z = sample_buffer_get(sbuf,valid);        
        for(j = i-1; j > valid; --j)
        { 
	  /* ai: loop here max inf; */
          /* ai: label here = "merge_samples_interpolate"; */
          int16_t y = iinterpolate16(valid,z,i,x,j);
          sample_buffer_set(sbuf,j, y);
        }
      }
      valid = i;
    }
  }
  /* increment ring buffer index */
  sample_buffer_set_valid(sbuf, valid);
  sample_buffer_incr_ptr(sbuf, cnt);
  return;
}
