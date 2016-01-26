CUR_PATH := vendor/rockchip/common/bluetooth

ifeq ($(strip $(BLUETOOTH_USE_BPLUS)),true)
PRODUCT_PACKAGES += \
	libbt-client-api \
	com.broadcom.bt \
	com.broadcom.bt.xml
endif

$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8723a/device-rtl.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8723b/device-rtl.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8703b/device-rtl.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8761a/device-rtl.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8821a/device-rtl.mk)
$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/usb/rtl8822b/device-rtl.mk)

$(call inherit-product-if-exists, $(LOCAL_PATH)/realtek/firmware/uart/rtlbtfw_cfg.mk)

BT_FIRMWARE_FILES := $(shell ls $(CUR_PATH)/lib/firmware)
PRODUCT_COPY_FILES += \
    $(foreach file, $(BT_FIRMWARE_FILES), $(CUR_PATH)/lib/firmware/$(file):system/vendor/firmware/$(file))

#include vendor/rockchip/common/bluetooth/console_start_bt/console_start_bt.mk

