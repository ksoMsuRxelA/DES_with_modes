CC = gcc
CFLAGS = -Wall -std=c11 
OBJ = des.o
SRC = des.c
PRJ = des

.PHONY: all run clean

all: $(PRJ)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

$(PRJ): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(PRJ)

clean: 
	rm -rf des
