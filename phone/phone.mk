ifeq (1, )
CUR_PATH := vendor/rockchip/common

######################################
#   phonepad codec list
######################################

ifeq ($(strip $(BOARD_CODEC_RT5631)),true)
PRODUCT_COPY_FILES += \
        $(CUR_PATH)/phone/codec/asound_phonepad_rt5631.conf:system/etc/asound.conf
endif
ifeq ($(strip $(BOARD_CODEC_WM8994)),true)
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/codec/asound_phonepad_wm8994.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT5625_SPK_FROM_SPKOUT)),true)
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/codec/asound_phonepad_rt5625.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT5625_SPK_FROM_HPOUT)),true)
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/codec/asound_phonepad_rt5625_spk_from_hpout.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT3261)),true)
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/codec/asound_phonepad_rt3261.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT3224)),true)
PRODUCT_COPY_FILES += \
        $(CUR_PATH)/phone/codec/asound_phonepad_rt3224.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RK616)),true)
PRODUCT_COPY_FILES += \
        $(CUR_PATH)/phone/codec/asound_phonepad_rk616.conf:system/etc/asound.conf
endif

#########################################################
#   Phone
#########################################################
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/etc/ppp/ip-down:system/etc/ppp/ip-down \
    $(CUR_PATH)/phone/etc/ppp/ip-up:system/etc/ppp/ip-up \
    $(CUR_PATH)/phone/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
    $(CUR_PATH)/phone/etc/operator_table:system/etc/operator_table

PRODUCT_COPY_FILES += \
    $(CUR_PATH)/phone/bin/usb_modeswitch.sh:system/bin/usb_modeswitch.sh \
    $(CUR_PATH)/phone/bin/usb_modeswitch:system/bin/usb_modeswitch \
    $(CUR_PATH)/phone/bin/chat:system/bin/chat \
    $(CUR_PATH)/phone/lib/libril-rk29-dataonly.so:system/lib/libril-rk29-dataonly.so

modeswitch_files := $(shell ls $(CUR_PATH)/phone/etc/usb_modeswitch.d)
PRODUCT_COPY_FILES += \
    $(foreach file, $(modeswitch_files), \
    $(CUR_PATH)/phone/etc/usb_modeswitch.d/$(file):system/etc/usb_modeswitch.d/$(file))

PRODUCT_PACKAGES += \
    rild \
    chat \
    Mms \
    ContactsCommon \
    Dialer \
    libril3 \
    rild3 \
    Stk

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true \
	ril.function.dataonly=1
 
######################################
#   phonepad modem list
######################################

ifeq ($(strip $(BOARD_BP_AUTO)), true)

    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath1=/system/lib/libreference-ril-mt6229.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath2=/system/lib/libreference-ril-mu509.so 
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath4=/system/lib/libreference-ril-mw100.so 
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath6=/system/lib/libreference-ril-sc6610.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath7=/system/lib/libreference-ril-m51.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath8=/system/lib/libreference-ril-mt6250.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath9=/system/lib/libreference-ril-c66a.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath10=/system/lib/libreference-ril-sew290.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath11=/system/lib/libreference-ril-u5501.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath12=/system/lib/libreference-ril-u7501.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath14=/system/lib/libreference-ril-a85xx.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath15=/system/lib/libreference-ril-e1230s.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild1.libpath=/system/lib/libreference-ril-sc6610-1.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild3.libpath=/system/lib/libril-rk29-dataonly.so
    ADDITIONAL_DEFAULT_PROPERTIES += rild.libpath13=/system/lib/libreference-ril-aw706.so
PRODUCT_COPY_FILES += \
                $(CUR_PATH)/phone/bin/gsm0710muxd:system/bin/gsm0710muxd \
                $(CUR_PATH)/phone/bin/gsm0710muxd_m51:system/bin/gsm0710muxd_m51 \
                $(CUR_PATH)/phone/bin/gsm0710muxd_mt6250:system/bin/gsm0710muxd_mt6250 \
                $(CUR_PATH)/phone/bin/gsm0710muxd_c66a:system/bin/gsm0710muxd_c66a \
		$(CUR_PATH)/phone/bin/gsm0710muxd_a85xx:system/bin/gsm0710muxd_a85xx \
		$(CUR_PATH)/phone/bin/gsm0710muxd_aw706:system/bin/gsm0710muxd_aw706 \
		$(CUR_PATH)/phone/bin/aw706_downloader:system/bin/aw706_downloader \
		$(CUR_PATH)/phone/bin/y03_downloader:system/bin/y03_downloader \
		$(CUR_PATH)/phone/bin/a85xx_downloader:system/bin/a85xx_downloader \
		$(CUR_PATH)/phone/bin/u7501_downloader:system/bin/u7501_downloader \
                $(CUR_PATH)/phone/lib/libreference-ril-sc6610.so:system/lib/libreference-ril-sc6610.so \
                $(CUR_PATH)/phone/lib/libreference-ril-sc6610-1.so:system/lib/libreference-ril-sc6610-1.so \
                $(CUR_PATH)/phone/lib/libreference-ril-m51.so:system/lib/libreference-ril-m51.so \
                $(CUR_PATH)/phone/lib/libreference-ril-mw100.so:system/lib/libreference-ril-mw100.so \
                $(CUR_PATH)/phone/lib/libreference-ril-mu509.so:system/lib/libreference-ril-mu509.so \
                $(CUR_PATH)/phone/lib/libreference-ril-mt6229.so:system/lib/libreference-ril-mt6229.so \
                $(CUR_PATH)/phone/lib/libreference-ril-mt6250.so:system/lib/libreference-ril-mt6250.so \
                $(CUR_PATH)/phone/lib/libreference-ril-c66a.so:system/lib/libreference-ril-c66a.so \
		$(CUR_PATH)/phone/lib/libreference-ril-sew290.so:system/lib/libreference-ril-sew290.so \
         	$(CUR_PATH)/phone/lib/libreference-ril-u7501.so:system/lib/libreference-ril-u7501.so \
		$(CUR_PATH)/phone/lib/libreference-ril-u5501.so:system/lib/libreference-ril-u5501.so \
		$(CUR_PATH)/phone/lib/libreference-ril-e1230s.so:system/lib/libreference-ril-e1230s.so \
		$(CUR_PATH)/phone/lib/libreference-ril-aw706.so:system/lib/libreference-ril-aw706.so \
		$(CUR_PATH)/phone/lib/libreference-ril-a85xx.so:system/lib/libreference-ril-a85xx.so \
		$(CUR_PATH)/phone/etc/voice-config/aw706_voice_config:system/etc/aw706_voice_config \
		$(CUR_PATH)/phone/etc/voice-config/y03_voice_config:system/etc/y03_voice_config \
		$(CUR_PATH)/phone/etc/voice-config/a85xx_voice_config:system/etc/a85xx_voice_config 
		
                
endif           

endif
