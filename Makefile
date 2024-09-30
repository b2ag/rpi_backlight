obj-m += rpi_backlight.o

KERNEL_DIR ?= /lib/modules/`uname -r`/build

.PHONY: modules install clean

modules:
	make -C $(KERNEL_DIR) M=$$PWD modules

install:
	make -C $(KERNEL_DIR) M=$$PWD modules_install

clean:
	make -C $(KERNEL_DIR) M=$$PWD clean
