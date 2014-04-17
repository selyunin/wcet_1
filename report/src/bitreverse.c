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

