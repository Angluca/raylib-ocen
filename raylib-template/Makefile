BUILD_DIR=./build

SRC=src/main.oc
DST=mygame

OCEN_LIB=-l ..
RAYLIB_INC=-I../c/include
RAYLIB_LIB=-L../c/lib
OC_LDFLAGS+=$(RAYLIB_INC) $(RAYLIB_LIB)
#OC_CFLAGS=-O3
OC_CFLAGS=

build:
	mkdir -p $(BUILD_DIR)
	ocen --cflags "$(OC_LDFLAGS) $(OC_CFLAGS)" -o $(BUILD_DIR)/$(DST) $(SRC) $(OCEN_LIB)

run: build
	./$(BUILD_DIR)/$(DST)

clean:
	rm -r $(BUILD_DIR)

.PHONY: run build
