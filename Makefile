CFLAGS += -Wall -W -Os -g -Wno-unused-parameter
CC := gcc

all:  linenoise_example linenoise_utf8_example

linenoise_example: linenoise.h linenoise.c  stringbuf.c stringbuf.h linenoise-win32.c example.c
	$(CC) $(CFLAGS) -o $@ linenoise.c example.c stringbuf.c

linenoise_utf8_example: linenoise.h linenoise.c  stringbuf.c stringbuf.h utf8.c linenoise-win32.c
	$(CC) $(CFLAGS) -DUSE_UTF8 -o $@ linenoise.c utf8.c example.c stringbuf.c

clean:
	rm -f linenoise_example linenoise_utf8_example *.o
