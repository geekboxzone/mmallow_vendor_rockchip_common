
PRODUCT_PACKAGES += \
    MediaFloat      \
    RkApkinstaller  \
    RkExpe          \
    RKUpdateService \
    RkExplorer      \
    RkUserExperienceService \
    GoogleEmail

ifneq ($(strip $(TARGET_BOARD_PLATFORM)), rk312x)
PRODUCT_PACKAGES += \
    Rk4kVideoPlayer
else
PRODUCT_PACKAGES += \
    RkVideoPlayer
endif

ifeq ($(strip $(BOARD_HAS_STRESSTEST_APP)), true)
    PRODUCT_PACKAGES += \
    StressTest \
    DeviceTest
endif
