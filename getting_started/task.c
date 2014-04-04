/* task.c */
#include <stdint.h>
void actuate(volatile uint8_t *actuator) {
  *actuator = 1;
}
void task(volatile uint8_t *sensors, volatile uint8_t* actuator) {
  unsigned i;
  uint16_t sum = 0;
  for(i = 0; i < 4; i++) {  
    sum += sensors[i];
  }
  if((sum >> 2) >= 128) {
    actuate(actuator);
  }
}
