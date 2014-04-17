/*
 * sample_buffer.h
 * Benedikt Huber <benedikt@vmars.tuwien.ac.at>, 2010-2013
 * WCET Analysis Lab, Real-Time System's Group, Institute of Computer Engineering, Vienna University of Technology
 *
 * Ring-Buffer datastructure for 16-bit samples
 */
#include "sample_buffer.h"
// ============================
// = Sample Buffer Operations =
// ============================

/** @brief initialize the given sample buffer using the given underlying memory region for storing values
 * @param buf A pointer to a (uninitialized) sample buffer
 * @param buf_storage Pointer to an array with buf_size elements
 * @param buf_size Maximum number of samples in the buffer (power of 2!)
 */
void init_sample_buffer(sample_buffer_t* buf, sample_value_t* buf_storage, int buf_size)
{
  buf->samples = buf_storage;
  buf->buf_size = buf_size;
  clear_sample_buffer(buf);
}

/** @brief remove all samples from the sample buffer
 * @param buf A pointer to a sample buffer
 */
void clear_sample_buffer(sample_buffer_t* buf)
{
  int i;
  for(i = 0; i < buf->buf_size;i++)
  {
    buf->samples[i] = VALUE_MISSING;
  }
  buf->sample_ptr = 0;
  buf->valid_ptr  = INVALID_INDEX;
  assert(buf->sample_ptr >= 0 && buf->sample_ptr < buf->buf_size && "invalid sample_ptr");
}

/** @brief Get the sample at a position relative to sample_ptr
 * @param buf A pointer to a sample buffer
 * @param offset The offset (positive or negative) of the element to access, relative to buf->sample_ptr
 */
sample_value_t sample_buffer_get(sample_buffer_t *buf, int offset)
{
  return buf->samples[RINDEX(buf,offset)];
}

/** @brief Set a sample at a position relative to sample_ptr
 * @param buf A pointer to a sample buffer
 * @param rioffsetndex The offset (positive or negative) of the element to access, relative to buf->sample_ptr
 * @param sample The new value at the given index
 */
void sample_buffer_set(sample_buffer_t *buf, int offset, sample_value_t value)
{
  buf->samples[RINDEX(buf,offset)] = value;
}

/** @brief Change the sample_ptr of the given buffer
 * @param buf A pointer to a sample buffer
 * @param offset The offset (positive or negative) to move buf->sample_ptr. The absolute value
 *               of offset has to be smaller than buf->buf_size
 */
void sample_buffer_incr_ptr(sample_buffer_t *buf, int offset)
{
  buf->sample_ptr = RINDEX(buf,offset);
  assert(buf->sample_ptr >= 0 && buf->sample_ptr < buf->buf_size && "invalid sample_ptr");
}

/** @brief Get the index of the last known valid sample
 * @param buf A pointer to a sample buffer
 * @return a non-positive relative index in the range (-buf->buf_size+1..0), or INVALID_INDEX, if there are no valid samples
 */
int sample_buffer_get_valid(sample_buffer_t *buf)
{
  if(buf->valid_ptr == INVALID_INDEX)
    return INVALID_INDEX;
  int rindex =  buf->valid_ptr - buf->sample_ptr;
  assert(rindex < buf->buf_size && "invalid index of 'valid_ptr'");
  if(rindex > 0)
    rindex = rindex - buf->buf_size;
  assert(rindex <= 0 && rindex > (-buf->buf_size) && "invalid rindex for 'valid_ptr'");
  return rindex;
}

/** @brief Set the index of the last known valid sample
 * @param buf A pointer to a sample buffer
 * @param rindex The offset (positive or negative) of the last valid element
 */
void sample_buffer_set_valid(sample_buffer_t *buf, int rindex) {
  buf->valid_ptr = RINDEX(buf, rindex);
}

