/*
 * macros.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * common macros
 */
#ifndef MACROS_H_EV19QIO5
#define MACROS_H_EV19QIO5

/* fixed size integers */
#include <stdint.h>

/* debug print */
#ifdef DEBUG
#include <stdio.h>
#include <assert.h>
#define debug(format, args...) fprintf (stderr, format, args)
#else
#define debug(format, args...)
#define assert(x) do{}while(0)
#endif

/* Other useful macros */
#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

#endif /* end of include guard: MACROS_H_EV19QIO5 */
