DESTDIR=
BUILD_DIR := build
SRC_DIR := src

all: $(BUILD_DIR) $(BUILD_DIR)/etbox-run

clean:
	rm -rf "$(BUILD_DIR)"

$(BUILD_DIR)/etbox-run: $(SRC_DIR)/etbox-run
	find $(SRC_DIR) -type f -exec cp -rp {} $(BUILD_DIR) \;

$(BUILD_DIR):
	mkdir $(BUILD_DIR)
