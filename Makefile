#
# Copyright 1985, 1986, Massachusetts Institute of Technology.
#
# $Header: Makefile,v 10.38 86/12/01 20:19:32 jg Exp $
#
# Subdirectories that have makefiles of their own.

# programs

xwm: Xlib/libX.a
	cd xwm; make

xwininfo: Xlib/libX.a
	cd xwininfo; make

xclock: Xlib/libX.a
	cd xclock; make

xdvi: Xlib/libX.a
	cd xdvi; make

# X servers

nest: libnest/libnest.a

X/servers/Xnest:
	cd X; make nest

# libraries

Xlib/libX.a:
	cd Xlib; make

libnest/libnest.a:
	cd libnest; make
