exec = ap.out
objects = main.o response.o routes.o server.o
flags = -g -Wall -Iinclude -std=c99
libs =  -lm 


all: $(objects)
	gcc $(flags) -o $(exec) $(objects) $(libs)

main.o:

	gcc -c $(flags) -o main.o src/main.c

response.o:

	gcc -c $(flags) -o response.o src/response.c

routes.o:

	gcc -c $(flags) -o routes.o src/routes.c

server.o:

	gcc -c $(flags) -o server.o src/server.c



clean:
	rm -r *.out *.o
	
