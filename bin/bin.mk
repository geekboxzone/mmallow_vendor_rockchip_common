ifeq ($(strip $(TARGET_ARCH)), arm)

PRODUCT_PACKAGES += \
    busybox         \
    mkdosfs         \
    sdtool

endif
