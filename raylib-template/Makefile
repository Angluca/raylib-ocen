OCEN=ocen
BUILD_DIR=./build

SRC=src/main.oc
DST=mygame

OCENLIB=-l ..
RAYLIB_INC=-I../c/include
RAYLIB_LIB=-L../c/lib
LDFLAGS=$(RAYLIB_INC) $(RAYLIB_LIB)
CFLAGS=-O3

build:
	mkdir -p $(BUILD_DIR)
	$(OCEN) --cflags "$(LDFLAGS) $(CFLAGS)" -o $(BUILD_DIR)/$(DST) $(SRC) $(OCENLIB)

run: build
	./$(BUILD_DIR)/$(DST)

clean:
	rm -r $(BUILD_DIR)

.PHONY: run build
