# No optimization: slower, but easier to relate to source code
CFLAGS:=-O0

# Optimizations enabled:
# Much faster, but more difficult to relate to source code
#CFLAGS:=-O1 -Xopt -disable-inlining


# debug info necessary for source annotations
CFLAGS+=-std=gnu99 -Wall -g

TARGET=test

SRCS=test.c task.c

# configurations for compiler and simulator
CFG_CLANG=-mpatmos-disable-function-splitter -mpatmos-disable-stack-cache
CFG_SIMULATOR=--gsize 67108864 --bsize 8 --tdelay 4 --gtime 1 \
	      --dcsize 2048 --dlsize 32 --dckind lru4 \
	      --icache icache --mcsize 256 --ilsize 32 --ickind lru2

.PHONY: all clean


all: $(TARGET).elf

$(TARGET).host: $(SRCS)
	gcc -O1 -Wall -o $@ $^

$(TARGET).dis: $(TARGET).elf
	patmos-llvm-objdump -d -t -fpatmos-print-bytes=call $< > $@

$(TARGET).elf: $(SRCS)
	patmos-clang $(CFLAGS) $(CFG_CLANG) -o $(TARGET).elf $^

$(TARGET).trace: $(TARGET).elf
	pasim $< --debug-fmt=trace --debug=0 --debug-file=$@ $(CFG_SIMULATOR)

clean:
	rm -rf *.elf *.trace *.host *.dis
