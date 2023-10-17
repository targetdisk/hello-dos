AS = ia16-elf-as
CC = ia16-elf-gcc
AR = ia16-elf-ar -r
RANLIB = ia16-elf-ranlib

CFLAGS ?= -D__dos -Iinclude -Wall -nostdlib -nostartfiles -nodefaultlibs -fno-builtin

LIBOBJS=lib/init.o lib/abort.o lib/abs.o lib/atexit.o lib/atoi.o \
	lib/bsearch.o lib/calloc.o lib/clearerr.o lib/ctime.o \
	lib/ctype.o lib/difftime.o lib/exit.o lib/fclose.o \
	lib/fdopen.o lib/feof.o lib/ferror.o lib/fflush.o lib/fgetc.o \
	lib/fgetpos.o lib/fgets.o lib/fileno.o lib/fopen.o \
	lib/fprintf.o lib/fputc.o lib/fputs.o lib/fread.o lib/free.o \
	lib/freopen.o lib/fscanf.o lib/fseek.o lib/fsetpos.o \
	lib/ftell.o lib/fwrite.o lib/getchar.o lib/getenv.o \
	lib/kprintf.o lib/malloc.o lib/memchr.o lib/memcmp.o \
	lib/memcpy.o lib/memmove.o lib/memset.o lib/perror.o \
	lib/printf.o lib/putchar.o lib/puts.o lib/qsort.o lib/rand.o \
	lib/realloc.o lib/remove.o lib/rename.o lib/rewind.o \
	lib/scanf.o lib/setbuf.o lib/setvbuf.o lib/sprintf.o \
	lib/sscanf.o lib/strcat.o lib/strchr.o lib/strcmp.o \
	lib/strcpy.o lib/strcspn.o lib/strdup.o lib/strerror.o \
	lib/strlen.o lib/strncat.o lib/strncmp.o lib/strncpy.o \
	lib/strpbrk.o lib/strrchr.o lib/strspn.o lib/strtok.o \
	lib/strtol.o lib/system.o lib/time.o lib/tmpfile.o \
	lib/tmpnam.o lib/ungetc.o lib/varargs.o lib/vformat.o \
	lib/vfprintf.o lib/vprintf.o lib/vscan.o lib/vsprintf.o

LIBSRCS = $(wildcard lib/*.c)

all:	lib

lib:	lib/libscc.a

lib/%.o: lib/%.c
	$(CC) -c $(CFLAGS) -o $@ $<

lib/libscc.a:	$(LIBOBJS)
	$(AR) lib/libscc.a $(LIBOBJS)
	$(RANLIB) lib/libscc.a

libscc.a:	$(OBJS)

clean:
	rm -vf lib/*.o lib/*.a

.PHONY: clean
