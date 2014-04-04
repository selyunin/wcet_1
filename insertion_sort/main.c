/*
 * main.c
 *
 * Daniel Prokesch <daniel@vmars.tuwien.ac.at>, 2014
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2014
 *
 * WCET Analysis Lab
 * Cyber-Physical Systems Group
 * Institute of Computer Engineering
 * Vienna University of Technology
 *
 * insertion sort - test driver
 */
#ifdef VERBOSE
#include <stdio.h>
#define V(x) x;
#else
#define V(x) do{}while(0)
#endif
#include "insertion_sort.h"
#include "measure.h"
#include <stdlib.h>


void run_tests()
{
  /* TODO: insert tests */
	const int input_size = 32;
	int input1 [input_size], input2 [input_size];	
	int input3 [input_size], input4 [input_size];	
	int input5 [input_size], input6 [input_size];	
	int i;

	for (i = 0; i <= input_size - 1; i++){
		input1[i] = i+1;
		input2[i] = 32 - i;
		input3[i] = rand();
		input4[i] = rand();
		input5[i] = rand();
		input6[i] = 0;
		//printf("rand = %d\n", rand());
	}
/*
	for (i = 0; i <= 31; i++){
		printf("input1[%d] = %d,\tinput2[%d] = %d\n", \
				i, input1[i], i, input2[i]);
				}
*/
	cycles_t t1, t2, t3, t4, t5, t6;
	MEASUREMENT_START(t1);
	insertion_sort(input1, input_size);
	MEASUREMENT_STOP(t1);

	MEASUREMENT_START(t2);
	insertion_sort(input2, input_size);
	MEASUREMENT_STOP(t2);
	
	MEASUREMENT_START(t3);
	insertion_sort(input3, input_size);
	MEASUREMENT_STOP(t3);

	MEASUREMENT_START(t4);
	insertion_sort(input4, input_size);
	MEASUREMENT_STOP(t4);

	MEASUREMENT_START(t5);
	insertion_sort(input5, input_size);
	MEASUREMENT_STOP(t5);

	MEASUREMENT_START(t6);
	insertion_sort(input6, input_size);
	MEASUREMENT_STOP(t6);

	MEASUREMENT_DUMP(t1);
	MEASUREMENT_DUMP(t2);
	MEASUREMENT_DUMP(t3);
	MEASUREMENT_DUMP(t4);
	MEASUREMENT_DUMP(t5);
	MEASUREMENT_DUMP(t6);

}

int main(int argc, char** argv)
{
  run_tests();
  return 0;
}
