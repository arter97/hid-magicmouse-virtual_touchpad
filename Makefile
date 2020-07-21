KERNEL_VERSION	:= $(shell uname -r)
KERNEL_MODULES	:= /lib/modules/$(KERNEL_VERSION)/build

cflags-y := -Wall

obj-m += hid-magicmouse.o

all:
	$(MAKE) -C $(KERNEL_MODULES) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_MODULES) M=$(PWD) clean
