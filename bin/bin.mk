ifeq ($(strip $(TARGET_ARCH)), arm)

PRODUCT_PACKAGES += \
    busybox         \
    mkdosfs         \
    sdtool

endif

ifeq ($(strip $(TARGET_ARCH)), x86)

PRODUCT_PACKAGES += \
	busybox

endif
