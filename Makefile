CC = gcc
CFLAGS = -O2
MT_FLAG = -fopenmp

all: stream_st stream_mt

stream_st: stream.c
	$(CC) $(CFLAGS) stream.c -o stream_st

stream_mt: stream.c
	$(CC) $(CFLAGS) $(MT_FLAG) stream.c -o stream_mt

clean:
	rm -f stream_st stream_mt *.o
