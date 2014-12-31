LOCAL_PATH := $(call my-dir)

PRODUCT_PACKAGES += \
    libapedec \
    libOMX_Core \
    libomxvpu_dec \
    libomxvpu_enc \
    librk_audio \
    librk_demux \
    librk_hevcdec \
    libRkOMX_Resourcemanager \
    librk_vpuapi \
    libstagefrighthw

ifeq ($(filter sofia%, $(TARGET_BOARD_PLATFORM)), )
PRODUCT_PACKAGES += \
    libhevcdec \
    librkwmapro \
    librkswscale \
    libjesancache \
    wfd 
endif

ifeq ($(filter rk2928, $(TARGET_BOARD_PLATFORM)), )
PRODUCT_PACKAGES += \
    libjpeghwdec \
    libjpeghwenc
endif

ifneq ($(filter rk%, $(TARGET_BOARD_PLATFORM)), )
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/vpu/etc/media_codecs.xml:system/etc/media_codecs.xml \
    vendor/rockchip/common/vpu/etc/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    vendor/rockchip/common/vpu/etc/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    vendor/rockchip/common/vpu/etc/media_codecs_rk_vpu.xml:system/etc/media_codecs_rk_vpu.xml
else
PRODUCT_COPY_FILES += \
	vendor/rockchip/common/vpu/etc/media_codecs_sofia.xml:system/etc/media_codecs.xml
endif
