CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_BASIC_LIB=basicMath.o
OBJECTS_POWER_LIB=power.o
FLAGS= -Wall -g

all: libmyMath.so libmyMath.a mymaths mymathd

mymaths: $(OBJECTS_MAIN) libmyMath.a 
	$(CC) $(FLAGS) -o mymaths $(OBJECTS_MAIN) libmyMath.a
mymathd: $(OBJECTS_MAIN) libmyMath.so
	$(CC) $(FLAGS) -o mymathd $(OBJECTS_MAIN) ./libmyMath.so
libmyMath.so: $(OBJECTS_BASIC_LIB) $(OBJECTS_POWER_LIB)
	$(CC) -shared -o libmyMath.so $(OBJECTS_BASIC_LIB) $(OBJECTS_POWER_LIB)
libmyMath.a: $(OBJECTS_POWER_LIB) $(OBJECTS_BASIC_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_POWER_LIB)	$(OBJECTS_BASIC_LIB)
mains: libmyMath.a main.o
	$(CC) $(FLAGS) -c main.c
maind:libmyMath.so main.o
	$(CC) $(FLAGS) -c main.c
libmyMath.a: $(OBJECTS_BASIC_LIB) $(OBJECTS_POWER_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_BASIC_LIB)	$(OBJECTS_POWER_LIB)
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o:basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so progmains progmaind

