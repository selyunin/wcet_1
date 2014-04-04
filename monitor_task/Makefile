# (c) 2013, Benedikt Huber, benedikt@vmars.tuwien.ac.at
OPT := -O0
#OPT := -O1 -Wl,-disable-inlining

CFLAGS+= -std=gnu99 -Wall -g $(OPT) $(DEFS)
TARGET=monitor_task
ENTRY=task
SRCS=fixedpoint.c sample_buffer.c task.c test_data.c test.c



# configurations for compiler and simulator
CFG_CLANG=-mpatmos-disable-function-splitter -mpatmos-disable-stack-cache
CFG_SIMULATOR=--gsize 67108864 --bsize 8 --tdelay 4 --gtime 1 \
	      --dcsize 2048 --dlsize 32 --dckind lru4 \
	      --icache icache --mcsize 256 --ilsize 32 --ickind lru2

.PHONY: all clean


all: $(TARGET).host $(TARGET).elf llvm.ais

$(TARGET).host: $(SRCS)
	gcc -O1 -DVERBOSE -DDEBUG -Wall -o $@ $^

$(TARGET).elf $(TARGET).elf.pml: $(SRCS)
	patmos-clang $(CFLAGS) -o $@ $(CFG_CLANG) \
	    -Xllc -mpreemit-bitcode=$(TARGET).elf.bc \
	    -mserialize=$(TARGET).elf.pml $^
	platin extract-symbols -i $(TARGET).elf.pml -o $(TARGET).elf.pml \
	    $(TARGET).elf

$(TARGET).dis: $(TARGET).elf
	patmos-llvm-objdump -d -t -fpatmos-print-bytes=call $< > $@

llvm.ais: $(TARGET).elf.pml
	platin pml2ais --ais llvm.ais \
	    --ais-disable-exports header,mem-addresses $(TARGET).elf.pml

$(TARGET).trace: $(TARGET).elf
	pasim $< --debug-fmt=trace --debug=0 --debug-file=$@ \
	    $(CFG_SIMULATOR) -V

$(TARGET).analyze-trace: $(TARGET).elf $(TARGET).elf.pml $(TARGET).trace
	platin analyze-trace -b $(TARGET).elf --input $(TARGET).elf.pml  \
	    --analysis-entry $(ENTRY) --trace-file $(TARGET).trace \
	    --recorders=g:lc/1 # --output $(TARGET).elf.pml

clean:
	rm -f *.elf *.elf.pml *.host llvm.ais *.elf.bc *.trace
