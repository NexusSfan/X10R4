#
# Copyright 1986, Massachusetts Institute of Technology
#
# Makefile for X Emulation library.
#

INCLUDES= -I../include -lX11-xcb -lX11 -lxcb
CFLAGS= -ansi -O ${INCLUDES}

OBJS= nest11.o

all: libnest11.a

# as this library is private to X, we should do nothing on install.

install: all

libnest11.a: $(OBJS)
	ar r libnest11.a $(OBJS)
	@ranlib libnest11.a

clean:
	rm -f ERRS *.o libnest11.a *~
