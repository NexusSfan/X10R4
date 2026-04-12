OBJS= colors.o data.o enter.o main.o newwin.o redraw.o warning.o
CFLAGS= -ansi -I../../include -lm

watch: $(OBJS) ../../Xlib/libX.a
	cc $(OBJS) $(CLFAGS) -o watch ../../Xlib/libX.a

clean:
	rm -f *.o
