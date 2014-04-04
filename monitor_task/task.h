/*
 * task.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * signal monitor task
 */

#ifndef TASK_H_GNND1UZX
#define TASK_H_GNND1UZX

#include "macros.h"
#include "fixedpoint.h"
#include "sample_buffer.h"

/* Constants */

//! @brief The binary logarithm of the number of samples used for the analysis
//         of the signal generator
#define SAMPLE_COUNT_LOG2 (6)

//! @brief The number of samples used for the FFT
#define SAMPLE_COUNT    (1<<SAMPLE_COUNT_LOG2)

//! @brief The maximum number of consecutive missing samples interpolated
#define MAX_CONSECUTIVE_MISSING 4

//! @brief Normalized sample maximum
#define NORM_MAX 30000

//! @brief The number of samples kept in the buffer
#define SAMPLE_BUF_SIZE (SAMPLE_COUNT*2)

#if (SAMPLE_COUNT > SAMPLE_BUF_SIZE)
#error "Number of samples used for FFT needs to be smaller than total number of samples kept in memory"
#endif

/* Error Codes */

//! @brief no error
#define E_OK                (0)

/* Status codes */

#define S_OK                     (0)
#define S_BAD_SPECTRUM          (-1)
#define S_PROCESSING_ERROR      (-2)
#define S_TOO_FEW_VALID_SAMPLES (-3)

/* Type aliases and composite types */

typedef int16_t status_t;

typedef enum _enum_signal_type_t {
	SINE_SIGNAL, SQUARE_SIGNAL
} signal_type_t;

/** @brief vector of samples */
typedef struct _struct_input
{
  int input_count;
  sample_value_t* input_samples;
} input_t;

/** @brief one sample buffers for each signal */
typedef struct _struct_state
{
  sample_buffer_t sample_buffer;
  sample_value_t  sample_buffer_storage[SAMPLE_BUF_SIZE];
} state_t;

typedef struct _struct_check_sin_param {
  int16_t amplitude_minimum;
  int16_t base_threshold;
  int16_t noise_threshold;
} check_sin_param_t;

typedef struct _struct_check_square_param {
  int16_t base_minimum;
  int16_t f1_minimum;
  int16_t noise_threshold;
} check_square_param_t;

typedef status_t (*check_function_t)(const void* ,const int16_t *, const int16_t*);

/** @brief signal specification */
typedef struct _struct_signal_spec
{
	signal_type_t signal_type;
	void* signal_params;
} signal_spec_t;

/* Prototypes */

/** @brief signal monitor task
 *
 * @param[in] input new samples for the signal
 * @param state sample buffer for the signal
 * @param signal_spec signal specification
 * @return status of the signal (ok, broken, too few (valid) samples)
 *
 * Algorithm:
 *  (1) Merge new samples and interpolate missing samples
 *  (2) Normalize samples and perform a FFT analysis
 *  (3) Run a check to see whether the generator works correctly
 *
 * Note: The sampler should run with ~ f*20 Hz for best results. 
 *
 */
status_t task(input_t *input, state_t *state, const signal_spec_t* signal_spec);

/** @brief return the status message */
char* status_message(int status);

/** @brief initialize the state of the monitor */
void init_state(state_t* st);

/** @brief Merge in new samples and interpolate missing values */
void merge_samples(input_t* in, sample_buffer_t* sbuf);

/** @brief Run a fast fourier transform, first normalizing samples */
status_t fft(sample_buffer_t *buf, int16_t *fft_r_out, int16_t *fft_i_out);

/* Checkers */

status_t check_sin(const void* param, const int16_t * fft_r, const int16_t* fft_i);

status_t check_square(const void* param, const int16_t * fft_r, const int16_t* fft_i);

#endif /* end of include guard: TASK_H_GNND1UZX */
