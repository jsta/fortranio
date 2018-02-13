INSTDIR=../inst

PROG = ch1001$(WIN)
LIB = lib/ch1001.o

all: clean $(PROG)
	echo $(FC) $(LIB)

$(PROG): $(LIB)
	$(FC) $(FCLAGS) $(FPICFLAGS) $(LIB) -o $(PROG)
	mkdir -p $(INSTDIR)/bin
	cp -f $(PROG) $(INSTDIR)/bin/

clean:
	rm -Rf $(LIB) $(SHLIB) $(PROG) $(OBJECTS)
