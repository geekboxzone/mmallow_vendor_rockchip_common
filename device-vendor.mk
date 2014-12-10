#
# Copyright 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product-if-exists, vendor/rockchip/common/apps/apps.mk)
ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), PVR540)
$(call inherit-product-if-exists, vendor/rockchip/common/gpu/PVR540.mk)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), mali400)
$(call inherit-product-if-exists, vendor/rockchip/common/gpu/Mali400.mk)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), Mali-T760)
$(call inherit-product-if-exists, vendor/rockchip/common/gpu/MaliT760.mk)
endif
$(call inherit-product-if-exists, vendor/rockchip/common/ipp/ipp.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/vpu/vpu.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/nand/nand.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/wifi/wifi.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/bin/bin.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/webkit/webkit.mk)
ifeq ($(strip $(BOARD_HAVE_BLUETOOTH)),true)
$(call inherit-product-if-exists, vendor/rockchip/common/bluetooth/bluetooth.mk)
endif
$(call inherit-product-if-exists, vendor/rockchip/common/gps/gps.mk)
$(call inherit-product-if-exists, vendor/rockchip/common/etc/adblock.mk)
# uncomment the line bellow to enable phone functions
#$(call inherit-product-if-exists, vendor/rockchip/common/phone/phone.mk)
ifeq ($(strip $(BUILD_WITH_RK_EBOOK)),true)
$(call inherit-product-if-exists, vendor/rockchip/common/app/rkbook.mk)
endif
# for data clone
$(call inherit-product-if-exists, vendor/rockchip/common/data_clone/packdata.mk)
