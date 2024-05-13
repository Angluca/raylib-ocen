BUILD_DIR=./build

SRC=src/main.oc
DST=mygame

RAYLIB_OCEN=..
RAYLIB_INC=-I$(RAYLIB_OCEN)/c/include
RAYLIB_LIB=-L$(RAYLIB_OCEN)/c/lib

OC_LDFLAGS+=$(RAYLIB_INC) $(RAYLIB_LIB)
OCEN_LIB=-l $(RAYLIB_OCEN)
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
