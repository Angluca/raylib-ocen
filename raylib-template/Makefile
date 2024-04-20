OCEN=ocen

SRC=src/main.oc
DST=mygame

OCENLIB=-l ..
CFLAGS="-I.. -L../c/lib"

build:
	$(OCEN) --cflags $(CFLAGS) -o $(DST) $(SRC) $(OCENLIB)

run: build
	./$(DST)

clean:
	rm ./$(DST) ./$(DST).c

.PHONY: run build
