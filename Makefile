CFLAGS=-std=c11 -g -static

gcc: main.c
			gcc main.c -o test

test: gcc 
			./test.sh

clean:
			rm -f test

.PHONY: test clean
