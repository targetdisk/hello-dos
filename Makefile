CC = ia16-elf-gcc
CFLAGS ?= -Wall

OBJCOPY = ia16-elf-objcopy
OBJCOPY_FLAGS ?= -j .text -j .sdata -j .data -j .dynamic -j .dynsym  -j .rel -j .rela -j .rel.* -j .rela.* -j .reloc --target msdos

hello.exe: hello.o
	$(OBJCOPY) $(OBJCOPY_FLAGS) $< $@

hello.o: hello.c
	$(CC) -c $(CFLAGS) -o $@ $<

### README #####################################################################

UNAME := $(shell uname)
ifeq ($(UNAME),Linux)
	OPEN=xdg-open
else ifeq ($(UNAME),Darwin)
	OPEN=open
endif

pub.css:
	wget https://github.com/manuelp/pandoc-stylesheet/raw/acac36b976966f76544176161ba826d519b6f40c/pub.css

# Requires Pandoc to be installed
README.html: README.md pub.css
	pandoc $< -s -c pub.css -o README.html
	$(OPEN) README.html

README: README.html
