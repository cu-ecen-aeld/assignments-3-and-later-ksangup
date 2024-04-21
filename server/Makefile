# Use cross compiler
#CC=$(CROSS_COMPILE)

#CFLAGS
CFLAGS = -g -Wall -Werror -I/

all: aesdsocket
	@echo "Build Done!"

aesdsocket: socket.o
	$(CC) $(CFLAGS) socket.o -o aesdsocket

socket.o: socket.c
	$(CC) $(CFLAGS) -c socket.c -o socket.o

clean:
	rm -f *.o aesdsocket

verify_memory: aesdsocket
	valgrind --leak-check full --show-leak-kinds=all --track-origins=yes --verbose \
	--log-file=valgrind-out.txt ./aesdsocket
