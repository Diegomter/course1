#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# makefile for the cortex-M4 build system
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FILE>.o - Builds <FILE>.o object file
#      build - Builds and links all source files
#      all - Same as build
#      clean - removes all generated files
#
# Platform Overrides:
#      CPU - ARM Cortex Architecture (cortex-m0plus, cortex-m4)
#      ARCH - ARM Architecture (arm, thumb)
#      SPECS - Specs file to give the linker (nosys.specs, nano.specs)
#
#------------------------------------------------------------------------------
include sources.mk
# Platform Overrides
PLATFORM = HOST
VERBOSE = DISABLE
COURSE = COURSE1
# General flags for both platforms
GEN_FLAGS = \
	    -Wall \
	    -Werror \
	    -g \
	    -O0 \
	    -std=c99

TARGET = c1FA

ifeq ($(VERBOSE), ENABLE)
	CPPFLAGS += -DVERBOSE
endif

ifeq ($(COURSE), COURSE1)
	CPPFLAGS += -DCOURSE1
endif

ifeq ($(PLATFORM), MSP432)
	# Architectures Specific Flags
	LINKER_FILE = -T msp432p401r.lds 
	CPU = cortex-m4
	ARCH = armv7e-m
	SPECS = nosys.specs
	EXTRA = -mthumb \
		-mfloat-abi=hard \
		-mfpu=fpv4-sp-d16
	# Compiler Flags and Defines
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	CFLAGS = $(GEN_FLAGS) $(EXTRA) -mcpu=$(CPU) -march=$(ARCH) --specs=$(SPECS)
	LDFLAGS = -Wl,-Map=$(TARGET).map -L ../ $(LINKER_FILE)
	CPPFLAGS = -DMSP432 $(INCLUDES)
	# Architecture specific source codes
	SOURCE = \
		 main.c \
		 course1.c\
               	 data.c\
		 stats.c\
		 memory.c \
		 interrupts_msp432p401r_gcc.c \
		 startup_msp432p401r_gcc.c \
		 system_msp432p401r.c
	
	SIZE = arm-none-eabi-size
else
	# Complier Flags and Defines
	CC = gcc
	CFLAGS = $(GEN_FLAGS)
	CPPFLAGS = -DHOST $(INCLUDES)
	LDFLAGS = -Wl,-Map=$(TARGET).map
	SIZE = size

endif

OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
ASMS = $(SRCS:.c=.asm)
PREP = $(SRCS:.c=.i)
%.o: %.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@
%.asm: %.c
	$(CC) -S $< $(CFLAGS) $(CPPFLAGS) -o $@
%.i: %.c
	$(CC) -E $< $(CPPFLAGS) -o $@
%.d: %.c
	$(CC) -E -M $< $(CPPFLAGS) -o $@

.PHONY: compile-all
compile-all: $(OBJS)

.PHONY: Build
build: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@
	
.PHONY: Clean
clean:
	rm -f $(OBJS) $(DEPS) $(ASMS) $(PREP) $(TARGET).out $(TARGET).map 

