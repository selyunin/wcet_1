/*
 * measure.h
 * (c) 2013-2014
 * Daniel Prokesch <daniel@vmars.tuwien.ac.at>
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>
 * WCET Analysis Lab, Real-Time Systems Group,
 * Institute of Computer Engineering
 * Vienna University of Technology
 *
 * Macros for execution time measurement on Patmos.
 * These are copied from the newlib function clock().
 * On Patmos, cycle counter is a 64-bit value.
 */

#ifndef _MEASURE_H_
#define _MEASURE_H_

#include <stdio.h>

typedef volatile unsigned long long cycles_t;


#ifdef __PATMOS__

#define _IODEV __attribute__((address_space(1)))

typedef _IODEV unsigned int volatile * const _iodev_ptr_t;

// linker symbol giving the base address of the timer device
extern char _timer_base;

#define _MEASUREMENT_CLOCK(c,d) do {\
  unsigned clo, chi;\
  _iodev_ptr_t hi_clock = (_iodev_ptr_t)(&_timer_base + 0x0); \
  _iodev_ptr_t lo_clock = (_iodev_ptr_t)(&_timer_base + 0x4); \
  clo = *lo_clock; \
  chi = *hi_clock; \
  (c) = ((((unsigned long long) chi) << 32) | clo) - (d); \
} while (0);

/*
 * Start a measurement
 */
#define MEASUREMENT_START(x) do {\
  _MEASUREMENT_CLOCK((x),0); \
} while (0);

/*
 * Stop a measurement
 */
#define MEASUREMENT_STOP(x) do {\
  _MEASUREMENT_CLOCK((x),(x)); \
} while (0);




#define _S(x) #x
#define _S_(x) _S(x)

/*
 * Print the number of cycles elapsed (including overhead),
 * together with its name and line number information
 */
#define MEASUREMENT_DUMP(x) do {\
  (void) fprintf(stderr, "MEASUREMENT(" __FILE__ ":" _S_(__LINE__)  ") " \
      #x " = %llu\n", (x)); \
} while (0);

#else

/* dummy implementation */
#define MEASUREMENT_START(x) do { x = 0; } while (0)
#define MEASUREMENT_STOP(x) do {} while (0)
#define MEASUREMENT_DUMP(x) do { (void)(x); } while (0)

#endif /* __PATMOS__ */

#endif /* _MEASURE_H_ */
