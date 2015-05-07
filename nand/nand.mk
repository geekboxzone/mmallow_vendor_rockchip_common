
ifeq ($(strip $(TARGET_ARCH)), arm)
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3036)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/rk3036/rk30xxnand_ko.ko.3.10.0:root/rk30xxnand_ko.ko.3.10.0
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/rk3188/rk30xxnand_ko.ko:root/rk30xxnand_ko.ko
else
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/rk30xxnand_ko.ko.3.10.0:root/rk30xxnand_ko.ko.3.10.0
endif
endif
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm/drmboot.ko:root/drmboot.ko
endif

ifeq ($(strip $(TARGET_ARCH)), arm64)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/nand/modules/arm64/drmboot.ko:root/drmboot.ko
    vendor/rockchip/common/nand/modules/arm64/rk30xxnand_ko.ko.3.10.0:root/rk30xxnand_ko.ko.3.10.0
endif
