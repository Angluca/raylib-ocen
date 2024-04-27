BUILD_DIR=./build

SRC=core/$(DST).oc
#DST=base_window2
#DST=smooth_pixelperfect
DST=loading_thread

OCENLIB=-l ..
RAYLIB_INC=../c/include
RAYLIB_LIB=../c/lib
OC_LDFLAGS=-I$(RAYLIB_INC) -L$(RAYLIB_LIB)
#CFLAGS=-O3
OC_CFLAGS=

build:
	mkdir -p $(BUILD_DIR)
	ocen --cflags "$(OC_LDFLAGS) $(OC_CFLAGS)" -o $(BUILD_DIR)/$(DST) $(SRC) $(OCENLIB)

run: build
	./$(BUILD_DIR)/$(DST)

clean:
	rm -r $(BUILD_DIR)

.PHONY: run build
