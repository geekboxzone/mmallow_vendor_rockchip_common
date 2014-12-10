ifeq ($(strip $(TARGET_ARCH)), arm)
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3036)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/rk3036/rk30xxnand_ko.ko.3.10.0:root/rk30xxnand_ko.ko.3.10.0
else
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/rk30xxnand_ko.ko.3.10.0:root/rk30xxnand_ko.ko.3.10.0
endif

PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/drmboot.ko:root/drmboot.ko
endif
