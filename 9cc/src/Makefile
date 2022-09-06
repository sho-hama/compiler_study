CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

9cc: $(OBJS)
	$(CC) -o 9cc $(OBJS) $(LDFLAGS)

$(OBJS): chibicc.h

test: 9cc
	../test/test.sh

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean