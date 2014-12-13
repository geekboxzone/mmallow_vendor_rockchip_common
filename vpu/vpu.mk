LOCAL_PATH := $(call my-dir)

PRODUCT_PACKAGES += \
    wfd \
    libapedec \
    libhevcdec \
    libjesancache \
    libOMX_Core \
    libomxvpu_dec \
    libomxvpu_enc \
    librk_audio \
    librk_demux \
    librk_hevcdec \
    libRkOMX_Resourcemanager \
    librkswscale \
    librk_vpuapi \
    librkwmapro \
    libstagefrighthw

ifeq ($(filter rk2928, $(TARGET_BOARD_PLATFORM)), )
PRODUCT_PACKAGES += \
    libjpeghwdec \
    libjpeghwenc
endif

PRODUCT_COPY_FILES += \
    vendor/rockchip/common/vpu/etc/media_codecs.xml:system/etc/media_codecs.xml

