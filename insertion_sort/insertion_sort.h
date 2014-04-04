/*
 * insertion_sort.h
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

//! @brief Standard insertion sort implementation
__attribute__((noinline))
void insertion_sort(int*arr, int size);

