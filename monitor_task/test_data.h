/*
 * test_data.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * signal monitor example: test data
 */
#include "task.h"

#if (SAMPLE_COUNT != 64)
#error "Tests requires SAMPLE_COUNT=64"
#endif

extern const sample_value_t TEST_DATA_INTERPOLATE_START;
extern sample_value_t TEST_DATA[SAMPLE_COUNT];
extern const signal_spec_t spec1;

extern sample_value_t TEST_DATA_2[SAMPLE_COUNT];
extern const signal_spec_t spec2;
