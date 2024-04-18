OCEN=ocen
SRC=examples/core/base_window.oc
DST=main

build:
	$(OCEN) -o $(DST) $(SRC)

run: build
	./$(DST)

clean:
	rm ./$(DST) ./$(DST).c

.PHONY: run build
