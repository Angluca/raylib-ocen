OCEN=ocen
SRC=examples/core/$(DST).oc
DST=base_window

build:
	$(OCEN) -o $(DST) $(SRC)

run: build
	./$(DST)

clean:
	rm ./$(DST) ./$(DST).c

.PHONY: run build
