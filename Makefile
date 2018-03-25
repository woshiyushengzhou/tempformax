Main:Main.o calc.o mul.o
	gcc -o Main Main.o calc.o mul.o

main.o:Main.c mul.h pi.h calc.h
	gcc -c Main.c

calc.o:calc.c
	gcc -c calc.c

mul.o:mul.c pi.h calc.h
	gcc -c mul.c

clean:
	rm Main.o calc.o mul.o Main
