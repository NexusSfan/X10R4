#
# Copyright 1985, 1986, Massachusetts Institute of Technology.
#
# $Header: Makefile,v 10.38 86/12/01 20:19:32 jg Exp $
#
# Subdirectories that have makefiles of their own.

X ?= Xnest

all: programs libraries $(X)

# programs
PROGRAMS = xwm/xwm xwininfo/xwininfo xclock/xclock xdvi/xdvi xgedit/xgedit xinit/xinit bitmap/bitmap
programs: $(PROGRAMS)

xwm: xwm/xwm
xwm/xwm: Xlib/libX.a
	cd xwm; make

xwininfo: xwininfo/xwininfo
xwininfo/xwininfo: Xlib/libX.a
	cd xwininfo; make

xclock: xclock/xclock
xclock/xclock: Xlib/libX.a
	cd xclock; make

xdvi: xdvi/xdvi
xdvi/xdvi: Xlib/libX.a
	cd xdvi; make

xgedit: xgedit/xgedit
xgedit/xgedit: Xlib/libX.a
	cd xgedit; make

xinit: xinit/xinit
xinit/xinit:
	cd xinit; make

bitmap: bitmap/bitmap
bitmap/bitmap: Xlib/libX.a
	cd bitmap; make

# X servers

Xnest: X/servers/Xnest
Xnest11: X/servers/Xnest11

X/servers/Xnest: libnest/libnest.a Xlib/libX.a
	cd X; make nest

X/servers/Xnest11: libnest/libnest11.a
	cd X; make nest11

# libraries
LIBRARIES = Xlib/libX.a libnest/libnest.a libnest/libnest11.a XMenu/libXMenu.a
libraries: $(LIBRARIES)

Xlib/libX.a:
	mkdir -p Xlib/profiled
	cd Xlib; make

libnest/libnest.a:
	cd libnest; make

libnest/libnest11.a:
	cd libnest11; make

XMenu/libXMenu.a:
	mkdir -p XMenu/profiled
	cd XMenu; make

# misc
clean:
	cd Xlib; make clean
	cd XMenu; make clean
	cd libnest; make clean
	cd libnest11; make clean
	cd xwm; make clean
	cd bitmap; make clean
	cd xwininfo; make clean
	cd xclock; make clean
	cd xdvi; make clean
	cd xgedit; make clean
	cd xinit; make clean
	cd X; make clean
