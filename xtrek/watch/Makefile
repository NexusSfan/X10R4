OBJS= colors.o data.o enter.o main.o newwin.o redraw.o warning.o
CFLAGS= -ansi -I../../include
LDFLAGS= -lm

watch: $(OBJS) ../../Xlib/libX.a
	cc $(OBJS) $(CLFAGS) -o watch ../../Xlib/libX.a $(LDFLAGS)

clean:
	rm -f *.o watch
