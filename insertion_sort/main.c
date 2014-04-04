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
}

int main(int argc, char** argv)
{
  run_tests();
  return 0;
}
