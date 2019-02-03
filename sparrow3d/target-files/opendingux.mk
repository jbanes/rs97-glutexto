# === Target file for the Dingoo with Opendingux. Use it with "make TARGET=opendingux" ===

SDL_CFLAGS  := $(shell sdl-config --cflags)
SDL_LIBS    := $(shell sdl-config --libs)

CC = mipsel-linux-gcc
FLAGS = -DMOBILE_DEVICE -DDINGUX -DBLACK_MAGIC $(GENERAL_TWEAKS) $(SMALL_RESOLUTION_DEVICES)
SDL = $(SDL_LIBS) -D_GNU_SOURCE=1 -D_REENTRANT
INCLUDE = $(SDL_CFLAGS)
LIB = 
AR = mipsel-linux-ar
RANLIB = mipsel-linux-ranlib
