#
# Copyright 1985, 1986, Massachusetts Institute of Technology.
#
# $Header: Makefile,v 10.38 86/12/01 20:19:32 jg Exp $
#
# Subdirectories that have makefiles of their own.

all: $(PROGRAMS) $(LIBRARIES)

# programs
PROGRAMS = xwm xwininfo xclock xdvi xgedit xinit
programs: $(PROGRAMS)

xwm: Xlib/libX.a
	cd xwm; make

xwininfo: Xlib/libX.a
	cd xwininfo; make

xclock: Xlib/libX.a
	cd xclock; make

xdvi: Xlib/libX.a
	cd xdvi; make

xgedit: Xlib/libX.a
	cd xgedit; make

xinit:
	cd xinit; make

# X servers

Xnest: X/servers/Xnest

X/servers/Xnest: libnest/libnest.a
	cd X; make nest

# libraries
LIBRARIES = Xlib/libX.a libnest/libnest.a
libraries: $(LIBRARIES)

Xlib/libX.a:
	cd Xlib; make

libnest/libnest.a:
	cd libnest; make

# misc
clean:
	cd Xlib; make clean
	cd libnest; make clean
	cd xwm; make clean
	cd xwininfo; make clean
	cd xclock; make clean
	cd xdvi; make clean
	cd xgedit; make clean
	cd xinit; make clean
	cd X; make clean
