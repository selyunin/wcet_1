# No optimization, so it is possible to use aiT's source code annotations
OPT:=-O0
OPT1:=-O1

DEFS:=-DVERBOSE

CFLAGS:=-std=gnu99 -Wall -g $(DEFS) $(OPT) -Xopt -disable-inlining
CFLAGS_O1:=-std=gnu99 -Wall -g $(DEFS) $(OPT1) -Xopt -disable-inlining

TARGET=insertion_sort

SRCS=insertion_sort.c main.c

# configurations for compiler and simulator
CFG_CLANG=-mpatmos-disable-function-splitter -mpatmos-disable-stack-cache
CFG_SIMULATOR=--gsize 67108864 --bsize 8 --tdelay 4 --gtime 1 \
	      --dcsize 2048 --dlsize 32 --dckind lru4 \
	      --icache icache --mcsize 256 --ilsize 32 --ickind lru2

.PHONY: all clean


all:  $(TARGET).host $(TARGET).elf

$(TARGET).host: $(SRCS)
	gcc -O1 -DVERBOSE -Wall -o $@ $^


$(TARGET).dis: $(TARGET).elf
	patmos-llvm-objdump -d -t -fpatmos-print-bytes=call $< > $@


$(TARGET).elf: $(SRCS)
	patmos-clang $(CFLAGS) $(CFG_CLANG) -o $(TARGET).elf $^

$(TARGET).trace: $(TARGET).elf
	pasim $< --debug-fmt=trace --debug=0 --debug-file=$@ $(CFG_SIMULATOR)

$(TARGET)_O1.elf: $(SRCS)
	patmos-clang $(CFLAGS_O1) $(CFG_CLANG) -o $(TARGET)_O1.elf $^

$(TARGET)_O1.dis: $(TARGET)_O1.elf
	patmos-llvm-objdump -d -t -fpatmos-print-bytes=call $< > $@

$(TARGET)_O1.trace: $(TARGET)_O1.elf
	pasim $< --debug-fmt=trace --debug=0 --debug-file=$@ $(CFG_SIMULATOR)



clean:
	rm -rf *.elf *.dis *.trace *.host
