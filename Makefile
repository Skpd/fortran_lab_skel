CC=gfortran
CFLAGS=-Wall -std=f2008ts -Wno-maybe-uninitialized -fimplicit-none -static-libgfortran -flto
NAME=lab_1_5
SOURCES=./src
BIN=./bin
OBJ=./obj
RM=rm -rf

all:
	$(CC) $(CFLAGS) -c $(SOURCES)/environment.f90 -o $(OBJ)/environment.o -J $(OBJ)
	$(CC) $(CFLAGS) -c $(SOURCES)/main.f90 -o $(OBJ)/main.o -I $(OBJ)
	$(CC) $(CFLAGS) -o $(BIN)/$(NAME) $(OBJ)/*.o

clean:
	$(RM) obj/* 
	$(RM) bin/*

run:
	@$(BIN)/$(NAME)
