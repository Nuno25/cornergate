CC=gcc
CFLAGS= -c -Wall -O2
OBJS=main

$(OBJS):$(subst .c,.o,$(wildcard *.c))
	$(CC) $^ -o $@

%.o:%.c
	$(CC) $(CFLAGS) $< -o $@

.PHONY:clean

clean:
	rm $(OBJS) *.o
