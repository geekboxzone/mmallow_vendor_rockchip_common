
CUR_PATH := vendor/rockchip/common

#########################################################
#   3G Dongle SUPPORT
#########################################################
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/etc/ppp/ip-down:system/etc/ppp/ip-down \
    $(CUR_PATH)/phone/etc/ppp/ip-up:system/etc/ppp/ip-up \
    $(CUR_PATH)/phone/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
    $(CUR_PATH)/phone/etc/operator_table:system/etc/operator_table

PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/bin/usb_modeswitch.sh:system/bin/usb_modeswitch.sh \
    $(CUR_PATH)/phone/bin/usb_modeswitch:system/bin/usb_modeswitch

modeswitch_files := $(shell ls $(CUR_PATH)/phone/etc/usb_modeswitch.d)
PRODUCT_COPY_FILES += \
    $(foreach file, $(modeswitch_files), \
    $(CUR_PATH)/phone/etc/usb_modeswitch.d/$(file):system/etc/usb_modeswitch.d/$(file))

PRODUCT_PACKAGES += \
    rild \
    libril-rk29-dataonly \
    chat 


PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true \
	ril.function.dataonly=1
