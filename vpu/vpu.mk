LOCAL_PATH := $(call my-dir)

PRODUCT_PACKAGES += \
    wfd \
    libapedec.so \
    libhevcdec.so \
    libjesancache.so \
    libOMX_Core.so \
    libomxvpu_dec.so \
    libomxvpu_enc.so \
    librk_audio.so \
    librk_demux.so \
    librk_hevcdec.so \
    libRkOMX_Resourcemanager.so \
    librkswscale.so \
    librk_vpuapi.so \
    librkwmapro.so \
    libstagefrighthw.so

ifeq ($(filter rk2928, $(TARGET_BOARD_PLATFORM)), )
PRODUCT_PACKAGES += \
    libjpeghwdec.so \
    libjpeghwenc.so
endif

PRODUCT_COPY_FILES += \
    vendor/rockchip/common/vpu/etc/media_codecs.xml:system/etc/media_codecs.xml

