/*
 * insertion_sort.c
 *
 * Daniel Prokesch <daniel@vmars.tuwien.ac.at>, 2014
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2014
 *
 * WCET Analysis Lab
 * Cyber-Physical Systems Group
 * Institute of Computer Engineering
 * Vienna University of Technology
 *
 * insertion sort routine
 */

/**
 * @brief Sort given array of integers using insertion sort
 * @param arr  array of integers
 * @param size number of elements in the array (user register upper bound: @size)
 */
__attribute__((noinline))
void insertion_sort(int*arr, int size)
{
  int i,j,v;
  j = 1;

  /* ai: loop (here) max 32;  */
  while (j < size)
    {
      /* invariant: sorted (a[0..j-1]) */
      v=arr[j];

      i = j - 1;

      /* ai: loop (here) max 31;  */
      while (i >= 0)
        {
          if(arr[i]<v) break;
          arr[i+1]=arr[i]; /* ai: LABEL here = "insertion_sort_move"; */
          i = i - 1;
        }

      arr[i+1]=v;
      j = j + 1;
    }
}
