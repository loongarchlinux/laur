KERNELRELEASE	   ?= `uname -r`
KERNEL_DIR	   ?= /lib/modules/$(KERNELRELEASE)/build
PWD		   := $(shell pwd)
obj-m		   := la_ow_syscall.o
la_ow_syscall-objs := fsstat.o la_ow_syscall_main.o signal.o
ccflags-y          := $(call cc-option,-mno-relax) $(call cc-option,-Wa$(comma)-mno-relax)

.PHONY: all install clean
.PHONY: install-all
.PHONY: modprobe la_ow_syscall

# we don't control the .ko file dependencies, as it is done by kernel
# makefiles. therefore la_ow_syscall.ko is a phony target actually
.PHONY: la_ow_syscall.ko

all: la_ow_syscall.ko
la_ow_syscall: la_ow_syscall.ko
la_ow_syscall.ko:
	@echo "Building la_ow_syscall driver..."
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules

install-all: install
install:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules_install

clean:
	rm -f *~
	rm -f Module.symvers Module.markers modules.order
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean

modprobe: la_ow_syscall.ko
	chmod a+r la_ow_syscall.ko
	sudo modprobe videodev
	-sudo rmmod la_ow_syscall
	sudo insmod ./la_ow_syscall.ko $(MODULE_OPTIONS)
