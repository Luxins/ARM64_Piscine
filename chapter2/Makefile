AE1OBJS = addexamp1.o
AE2OBJS = addexamp2.o
MEOBJS = movexamps.o
CSOBJS = codesnippets.o

ifdef DEBUG
	DEBUGFLGS = -g
else
	DEBUGFLGS =
endif

LDFLAGS = -e _start -arch arm64 -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path`

%.o: %.s
	as $(DEBUGFLGS) -o $@ $<

all: addexamp1 addexamp2 movexamps codesnippets


addexamp1: addexamp1.o
	ld -o addexamp1 $(AE1OBJS) $(LDFLAGS)

addexamp2: addexamp2.o
	ld -o addexamp2 $(AE2OBJS) $(LDFLAGS)

movexamps: movexamp.o
	ld -o movexamps $(MEOBJS) $(LDFLAGS)

codesnippets: codesnippets.o
	ld -o codesnippets $(CSOBJS) $(LDFLAGS)

fclean:
	rm *.o codesnippets movexamps addexamp1 addexamp2