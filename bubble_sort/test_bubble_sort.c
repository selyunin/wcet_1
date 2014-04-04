/* test.c */
#include <stdint.h>
#include <stdio.h>
#include "measure.h"

void bubble_sort(double numbers[], int array_size);

static const int input1_size = 4;
static double input1[4] = { 1.2 , 2.1 , 3.3 , 4.0 };
static const int input2_size = 4;
static double input2[4] = { 4.0, 3.3, 2.1 , 1.2  };

int main(int argc, char **argv) {
  cycles_t t1,t2;

  MEASUREMENT_START(t1);
  bubble_sort(input1, input1_size);
  MEASUREMENT_STOP(t1);

  MEASUREMENT_START(t2);
  bubble_sort(input2, input2_size);
  MEASUREMENT_STOP(t2);

  printf("Array sizes : %d, %d\n", input1_size, input2_size);

  /* Print the measurements in cycles to stderr, including overhead */
  MEASUREMENT_DUMP(t1);
  MEASUREMENT_DUMP(t2);

  return 0;
}

