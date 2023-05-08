ifeq ($(CONFIG_MACH_XIAOMI_SDM439),y)
obj-$(CONFIG_MACH_XIAOMI_SDM439) += mach/
obj-$(CONFIG_HQ_SYSFS_SUPPORT_MI439) += hqsysfs/

obj-$(CONFIG_BACKLIGHT_LCD_SUPPORT) += backlight/
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif
