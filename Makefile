DESTDIR=
BUILD_DIR := build
SRC_DIR := src

all: $(BUILD_DIR) $(BUILD_DIR)/etbox-run

install: $(DESTDIR)/bin/etbox-run
	
clean:
	rm -rf "$(BUILD_DIR)"

$(BUILD_DIR)/etbox-run: $(SRC_DIR)/etbox-run
	find $(SRC_DIR) -type f -exec cp -rp {} $(BUILD_DIR) \;

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(DESTDIR)/bin/etbox-run: $(BUILD_DIR)/etbox-run
	install -m=755 $(BUILD_DIR)/etbox-run $(DESTDIR)/bin/etbox-run
