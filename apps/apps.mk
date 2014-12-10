
PRODUCT_PACKAGES += \
    MediaFloat      \
    RkApkinstaller  \
    RkExpe          \
    RKUpdateService \
    RkExplorer      \
    RkUserExperienceService \
    StressTest

ifneq ($(strip $(TARGET_BOARD_PLATFORM)), rk312x)
PRODUCT_PACKAGES += \
    Rk4kVideoPlayer
else
PRODUCT_PACKAGES += \
    RkVideoPlayer
endif
