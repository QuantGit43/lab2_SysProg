CC     ?= gcc
SRC    := src/sensor.c
OUT    := build
COMMON := -g -fno-omit-frame-pointer -Wall -Wextra

FLAGS_O0     := -O0
FLAGS_O3     := -O3
FLAGS_native := -O3 -march=native
FLAGS_fast   := -O3 -march=native -ffast-math

BUILDS := sensor_O0 sensor_O3 sensor_native sensor_fast

all: $(addprefix $(OUT)/,$(BUILDS))

$(OUT)/sensor_%: $(SRC) Makefile | $(OUT)
	$(CC) $(COMMON) $(FLAGS_$*) -DBUILD_NAME='"sensor_$*"' $< -o $@ -lm

asm: $(addprefix $(OUT)/,$(addsuffix .s,$(BUILDS)))

$(OUT)/sensor_%.s: $(SRC) Makefile | $(OUT)
	$(CC) $(COMMON) $(FLAGS_$*) -S -masm=intel $< -o $@

vecreport: | $(OUT)
	$(CC) $(COMMON) $(FLAGS_native) -c $(SRC) -o /dev/null -fopt-info-vec-all 2> $(OUT)/vec_native.txt
	$(CC) $(COMMON) $(FLAGS_fast) -c $(SRC) -o /dev/null -fopt-info-vec-all 2> $(OUT)/vec_fast.txt
	$(CC) $(COMMON) $(FLAGS_O3) -c $(SRC) -o /dev/null -fopt-info-vec-all 2> $(OUT)/vec_O3.txt

$(OUT):
	mkdir -p $@

clean:
	rm -rf $(OUT)

.PHONY: all asm vecreport clean
