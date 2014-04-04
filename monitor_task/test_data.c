/*
 * test_data.c
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * signal monitor example: test data
 */
#include "task.h"
#include "test_data.h"

check_sin_param_t params1 =    { FP_FROM_DOUBLE(2.00), FP_FROM_DOUBLE(1.25), FP_FROM_DOUBLE(1.0) };
const signal_spec_t spec1 =    { SINE_SIGNAL, &params1 };
check_square_param_t params2 = { FP_FROM_DOUBLE(1.50), FP_FROM_DOUBLE(0.7), FP_FROM_DOUBLE(0.8) };
const signal_spec_t spec2 =    { SQUARE_SIGNAL, &params2 };

#define _M VALUE_MISSING
const sample_value_t TEST_DATA_INTERPOLATE_START = -1189;
sample_value_t TEST_DATA[SAMPLE_COUNT] = {
   _M,  1498,  3890,  3745,  4340,  4569,  5072,  4115,
  4874,  3941,  1214,  -282,   242, -1102, -3112, -2937,
 -3570, -2791,    _M, -1437, -1536,  -346,  1860,  2280,
  4675,  4300,  5051,  6057,  4157,  4836,  2282,  1855,
  1553,     4,  -771, -2167, -3439,    _M, -3527, -2862,
 -2853, -1870,    _M,  2183,  2859,  2726,  4945,  5932,
  4872,  3965,  4493,  4048,  3014,  2145,  -428,  -896,
 -1257, -2808, -2899, -2662, -3261, -1577,    _M,   353
};

sample_value_t TEST_DATA_2[SAMPLE_COUNT] = {
     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     0,
  5000,     5000,     5000,     5000,     5000,     5000,     5000,     5000,
  5000,     5000,     5000,     5000,     5000,     5000,     5000,     5000,
     0,     0,     0,     0,     _M,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     _M,
  5000,     5000,     5000,     5000,     5000,     5000,     5000,     5000,
  5000,     5000,     5000,     5000,     5000,     5000,     5000,     5000
};
#undef _M
