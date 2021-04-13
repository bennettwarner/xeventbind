CC=gcc
CFLAGS=-O2 -Wall

LIBS=-lX11
OBJ=main.o xeb_handler.o

.PHONY: all clean
all: xeventbind

xeventbind: $(OBJ)
	$(CC) -o $@ $^ $(LIBS) $(CFLAGS)	

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

install:
	cp ./xeventbind /usr/bin/xeventbind

clean:
	rm -f xeventbind *.o
