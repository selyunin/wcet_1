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


void run_tests()
{
  /* TODO: insert tests */
	int input_1 [32];	
	int input_2 [32];	
	int i;
	for (i = 0; i <= 31; i++){
		input_1[i] = i+1;
		input_2[i] = 32 - i;
	}
	for (i = 0; i <= 31; i++){
		printf(

}

int main(int argc, char** argv)
{
  run_tests();
  return 0;
}
