SRC_DIR=src
OUT_DIR=build

buildMain: $(SRC_DIR)/main.asm
	if [ ! -d $(OUT_DIR) ]; then mkdir $(OUT_DIR); fi
	nasm -f elf64 -g -F dwarf $(SRC_DIR)/main.asm -o $(OUT_DIR)/main.o
	ld -o $(OUT_DIR)/runme $(OUT_DIR)/main.o

.PHONY: clean

clean:
	rm -rf $(OUT_DIR)