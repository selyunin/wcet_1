/*
 * test.c
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * signal monitor app test routines
 */

#include <math.h>
#include <stdint.h>
#include <inttypes.h>
#include "task.h"
#include "test_data.h"
#include "measure.h"

#ifdef VERBOSE
/* Console Output */
#include <stdio.h>
static void sep(char* str);
static void print_sample_buffer(char* header, sample_buffer_t* sbuf);
#else
static void sep(char* str) {}
static void print_sample_buffer(char* _, sample_buffer_t* sbuf);
#define printf(fmt,...) do{}while(0)
#endif


/* Test Data */
sample_buffer_t sbuf_1;
sample_value_t  sbuf_1_storage[SAMPLE_BUF_SIZE];

/* Test Check Value */
uint64_t check = 0;
#define RECORD(v) (check = ((check<<7) ^ (uint64_t)v))

/* Test Linear Interpolation */
void test_interpolate()
{
  int     indices[] =  { 0        ,2        ,5         ,9        };
  int16_t values[]   = { FP_INT(0),FP_INT(3),FP_INT(-1),FP_INT(4)};
  int i,j;

  sep("FP - Interpolate test (16 bit)");
  for(i = 0; i < ARRAY_SIZE(indices)-1;++i)
  {
    int i1 = indices[i];
    int i2 = indices[i+1];
    for(j = i1+1; j < i2;j++)
    {
      int16_t v1 = values[i];
      int16_t v2 = values[i+1];
      int16_t v = iinterpolate16(i1,v1,i2,v2,j);

      printf("x[%2d] = %6d , x[%2d] = %6d ==> x[%2d] = %6d\n", i1,v1,i2,v2,j,v);
      RECORD(v);
    }
  }
}

/* Test the sample buffer data structure */
void test_merge_samples(sample_buffer_t* sbuf)
{
  int i,j;
  int32_t cnt = 0;

  static const int ticks1 = 17;
  static const int ticks2 = 3;
  static const int samples_per_tick = SAMPLE_COUNT;
  sample_value_t input_buffer[samples_per_tick];

  input_t input;
  input.input_samples = &input_buffer[0];
  input.input_count = samples_per_tick;

  sep("Sample Buffer Test");
  printf("Size of sample buffer: %d\n", sbuf->buf_size);
  clear_sample_buffer(sbuf);
  print_sample_buffer("Initial Sample Buffer", sbuf);

  for(i = 0 ; i < ticks1 ; i++)
  {
    printf("Adding %d samples (values from %" PRId32 " to %" PRId32 ", every 5^th value non-missing)\n",
	   input.input_count, cnt << 4, (int32_t)((cnt + input.input_count) << 4));
    for(j = 0; j < input.input_count; j++, cnt++) {
      if((cnt %  5) == 0) {
        input_buffer[j] = (cnt << 4);
      } else {
        input_buffer[j] = VALUE_MISSING;
      }
    }
    merge_samples(&input, sbuf);
    print_sample_buffer("Sample Buffer", sbuf);
  }
  for(i = 0 ; i < ticks2; i++)
  {
    printf("Adding %d samples (values from %" PRId32 " to %" PRId32 ")\n",
	   input.input_count, cnt << 4, (int32_t)((cnt + input.input_count) << 4));
    for(j = 0; j < input.input_count; j++, cnt++) {
      input_buffer[j] = (cnt << 4);
    }
    merge_samples(&input, sbuf);
    print_sample_buffer("Sample Buffer", sbuf);
  }
}

/* Test fast-fourier transformation */
void test_fft(sample_buffer_t* sbuf)
{
  int16_t fft_r[SAMPLE_COUNT];
  int16_t fft_i[SAMPLE_COUNT];
  int32_t fft_abs[SAMPLE_COUNT];
  int i;

  input_t input;

  int j;
  int32_t cnt = 0;
  sample_value_t input_buffer[64];
  input.input_samples = &input_buffer[0];
  input.input_count = 64;

  //input.input_count   = ARRAY_SIZE(TEST_DATA);
  //input.input_samples = &TEST_DATA[0];
  clear_sample_buffer(sbuf);
  for(i = 0 ; i < 20 ; i++)
  {
    printf("Adding %d samples (values from %" PRId32 " to %" PRId32 ", every 5^th value non-missing)\n",
	   input.input_count, cnt << 4, (int32_t)((cnt + input.input_count) << 4));
    for(j = 0; j < input.input_count; j++, cnt++) {
      if((cnt %  2) == 0) {
        input_buffer[j] = (cnt << 4);
      } else {
        input_buffer[j] = VALUE_MISSING;
      }
    }
    //merge_samples(&input, sbuf);
    //print_sample_buffer("Sample Buffer", sbuf);

  sep("FP - FFT Test");
  /* Add two copies of test data */
  merge_samples(&input, sbuf);
  merge_samples(&input, sbuf);
  print_sample_buffer("FFT Test Start", sbuf);

	cycles_t fft1;
	MEASUREMENT_START(fft1);
    fft(sbuf, &fft_r[0], &fft_i[0]);
	MEASUREMENT_STOP(fft1);
	MEASUREMENT_DUMP(fft1);
/*
  for(i = 0; i < ARRAY_SIZE(fft_r); i++)
  {
    int32_t real = fft_r[i];
    int32_t imag = fft_i[i];
    int32_t absval = FP_SQRT( ((real*real)>>FP_FRAC) + ((imag*imag)>>FP_FRAC) );

    if(absval > INT16_MAX) absval = INT16_MAX;
    printf("%d: %"PRId32" = |%"PRId32" + %"PRId32" i|\n", i, absval, real, imag);
    fft_abs[i] = absval;
  }
*/
  }
}


#define GEN_COUNT 2
#define MAX_INPUT_COUNT SAMPLE_COUNT
static input_t input[GEN_COUNT];
static sample_value_t inputbuf[SAMPLE_COUNT];
static const signal_spec_t * spec[GEN_COUNT] = { &spec1, &spec2 };
static state_t state[GEN_COUNT];
static status_t output[GEN_COUNT];

/* test signal monitor task */
void test_task()
{
  int i;
  init_state(&state[0]);
  init_state(&state[1]);

  sep("Add half of data samples to the input (too few samples)");

  input[0].input_count   = SAMPLE_COUNT/2;
  input[0].input_samples = &TEST_DATA[0];

  input[1].input_count   = SAMPLE_COUNT/2;
  input[1].input_samples = &TEST_DATA_2[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add other half of data samples to the input (first: missing 1 sample, second generator ok)");

  input[0].input_count   = SAMPLE_COUNT/2;
  input[0].input_samples = &TEST_DATA[SAMPLE_COUNT/2];

  input[1].input_count   = SAMPLE_COUNT/2;
  input[1].input_samples = &TEST_DATA_2[SAMPLE_COUNT/2];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add first half of data samples to the input again (both generators ok)");

  input[0].input_count   = SAMPLE_COUNT/2;
  input[0].input_samples = &TEST_DATA[0];

  input[1].input_count   = SAMPLE_COUNT/2;
  input[1].input_samples = &TEST_DATA_2[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add 10 more data samples to the input (both generators ok)");

  input[0].input_count   = 10;
  input[0].input_samples = &TEST_DATA[SAMPLE_COUNT/2];

  input[1].input_count   = 10;
  input[1].input_samples = &TEST_DATA_2[SAMPLE_COUNT/2];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Constant signal (0) (Both generators broken)");
  for(i = 0; i < SAMPLE_COUNT; i++) inputbuf[i] = 0;
  input[0].input_count   = SAMPLE_COUNT;
  input[0].input_samples = &inputbuf[0];
  input[1].input_count   = SAMPLE_COUNT;
  input[1].input_samples = &inputbuf[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Constant signal (2.00) (Both generators broken)");
  for(i = 0; i < SAMPLE_COUNT; i++)
    inputbuf[i] = FP_FROM_DOUBLE(2.00);
  input[0].input_samples = &inputbuf[0];
  input[1].input_samples = &inputbuf[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add both test data samples to the input (Both generators ok)");
  input[0].input_samples = &TEST_DATA[0];
  input[1].input_samples = &TEST_DATA_2[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add first half of samples of other generator (Both generators broken)");
  input[0].input_count   = SAMPLE_COUNT/2;
  input[1].input_count   = SAMPLE_COUNT/2;
  input[0].input_samples = &TEST_DATA_2[0];
  input[1].input_samples = &TEST_DATA[0];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

  sep("Add other samples from other generator (Both generators broken)");
  input[0].input_samples = &TEST_DATA_2[SAMPLE_COUNT/2];
  input[1].input_samples = &TEST_DATA[SAMPLE_COUNT/2];

  for(i = 0; i < GEN_COUNT; i++)
  {
    output[i] = task(&input[i],&state[i],spec[i]);
    printf("Generator status %d: %s\n",i,status_message(output[i]));
  }

}

/* Hint: here are the relevant tests for the functions to be analyzed:
   - iinterpolate16: test_interpolate
   - merge_samples: test_merge_samples
   - fft: test_fft
   - task: test_task
*/
int main()
{
  init_sample_buffer(&sbuf_1, &sbuf_1_storage[0], SAMPLE_BUF_SIZE);

  test_interpolate();
  test_merge_samples(&sbuf_1);
  test_fft(&sbuf_1);
  test_task();
  printf("Check value: %"PRIu64"\n", check);
  return 0;
}

#ifdef VERBOSE
/* Console Output Routines */
/*-------------------------*/

static void sep(char* str)
{
  printf("******************************************************************************\n");
  printf("--- %-70s ---\n",str);
  printf("******************************************************************************\n");
}

void print_sample_buffer(char* header, sample_buffer_t* sbuf)
{
  int i,ptr;
  printf("%s\n",header);
  printf(" SAMPLE BUFFER pointer: %d, valid: %d\n", sbuf->sample_ptr, sbuf->valid_ptr);
  ptr = PTR_INDEX(sbuf);
  for(i = 0; i < sbuf->buf_size; i++)
  {
    if(i > 0 && i%16==0) {
      fprintf(stdout,"\n");
    }
    if(i == ptr) {
      fprintf(stdout,"^");
    } else if(i == ((ptr+(sbuf->buf_size>>1))%(sbuf->buf_size))) {
      fprintf(stdout,"|");
    } else {
      fprintf(stdout," ");
    }
    if(IS_VALUE_MISSING(sbuf->samples[i]))  {
      fprintf(stdout, "%6s", " ... ");
    } else {
      fprintf(stdout, "%6d", sbuf->samples[i]);
    }
    RECORD(sbuf->samples[i]);
  }
  fprintf(stdout,"\n");
  if(sbuf->sample_ptr < 0) fprintf(stdout, " [%d samples missing]", -sbuf->sample_ptr);
  fprintf(stdout,"\n");
}
#else
void print_sample_buffer(char* header, sample_buffer_t* sbuf)
{
  int i;
  for(i = 0; i < sbuf->buf_size; i++) {
    RECORD(sbuf->samples[i]);
  }
}
#endif
