/*
 * sample_buffer.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * Ring-Buffer datastructure for 16-bit samples
 */
#ifndef SAMPLE_BUFFER_H_T1LW1FZN
#define SAMPLE_BUFFER_H_T1LW1FZN
#include <limits.h>
#include <stdint.h>
#include "macros.h"
#include "fixedpoint.h"

//! @brief index of the next sample to be stored in the buffer
#define PTR_INDEX(buf)      ((buf->sample_ptr < 0) ? (buf->buf_size+buf->sample_ptr) : (buf->sample_ptr))

//! @brief index of the sample with relative index 'rindex' in the buffer
#define RINDEX(buf,rindex)  ((PTR_INDEX(buf) + buf->buf_size + rindex) & (buf->buf_size-1))

//! @brief Special value used for missing samples
#define VALUE_MISSING        INT16_MIN

//! @brief Special value for invalid index
#define INVALID_INDEX        INT_MIN

#define IS_VALUE_MISSING(s)  (s == VALUE_MISSING)

typedef fix16_t sample_value_t;

/* Sample Buffer datatype
 * ~~~~~~~~~~~~~~~~~~~~~~
 * phase := (next_ptr < 0) ? INIT : POST_INIT
 * next_sample := (phase == INIT) ? (buf_size-next_ptr) : next_ptr
 */
typedef struct _struct_sample_buffer
{
  int             buf_size;         //! @brief size of the sample buffer
  sample_value_t* samples;          //! @brief sample data

  int             sample_ptr;       //! @brief stories the index of the next sample
  int             valid_ptr;        //! @brief stores the index of the last valid sample
} sample_buffer_t;


/** @brief initialize the given sample buffer using the given underlying memory region for storing values
 * @param buf A pointer to a (uninitialized) sample buffer
 * @param buf_storage Pointer to an array with buf_size elements
 * @param buf_size Maximum number of samples in the buffer
 */
void init_sample_buffer(sample_buffer_t* buf, sample_value_t* buf_storage, int buf_size);

/** @brief remove all samples from the sample buffer
 * @param buf A pointer to a sample buffer
 */
void clear_sample_buffer(sample_buffer_t* buf);


/** @brief Get the sample at a position relative to sample_ptr
 * @param buf A pointer to a sample buffer
 * @param rindex The offset (positive or negative) of the element to access, relative to buf->sample_ptr
 */
sample_value_t sample_buffer_get(sample_buffer_t *buf, int rindex);

/** @brief Set a sample at a position relative to sample_ptr
 * @param buf A pointer to a sample buffer
 * @param rindex The offset (positive or negative) of the element to access, relative to buf->sample_ptr
 * @param sample The new value at the given index
 */
void sample_buffer_set(sample_buffer_t *buf, int rindex, sample_value_t sample);

/** @brief Get the index of the last known valid sample
 * @param buf A pointer to a sample buffer
 * @return a non-positive relative index in the range (-buf->buf_size+1..0), or INVALID_INDEX, if there are no valid samples
 */
int sample_buffer_get_valid(sample_buffer_t *buf);

/** @brief Set the index of the last known valid sample
 * @param buf A pointer to a sample buffer
 * @param rindex The offset (positive or negative) of the last valid element
 */
void sample_buffer_set_valid(sample_buffer_t *buf, int rindex);

/** @brief Change the sample_ptr of the given buffer
 * @param buf A pointer to a sample buffer
 * @param offset The offset (positive or negative) to move buf->sample_ptr. The absolute value
 *               of offset has to be smaller than buf->buf_size
 */
void sample_buffer_incr_ptr(sample_buffer_t *buf, int offset);

#endif /* end of include guard: SAMPLE_BUFFER_H_T1LW1FZN */
