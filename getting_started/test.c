/* test.c */
#include <stdint.h>
#include <stdio.h>
#include "measure.h"

void task(volatile uint8_t *sensors, volatile uint8_t* actuator);

static uint8_t input1[4] = { 127,129,130,127 };
static uint8_t input2[4] = { 129,129,130,120 };
static uint8_t actuators[2];

int main(int argc, char **argv) {
  cycles_t t1,t2;

  MEASUREMENT_START(t1);
  task(input1, &actuators[0]);
  MEASUREMENT_STOP(t1);

  MEASUREMENT_START(t2);
  task(input2, &actuators[1]);
  MEASUREMENT_STOP(t2);

  printf("Actuator values: %d, %d\n", actuators[0], actuators[1]);

  /* Print the measurements in cycles to stderr, including overhead */
  MEASUREMENT_DUMP(t1);
  MEASUREMENT_DUMP(t2);

  return 0;
}

