#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/dream-common

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Flat device tree for boot image
PRODUCT_PACKAGES += \
    	dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
    	fstab.samsungexynos8895 \
    	init.baseband.rc \
    	init.bluetooth.rc \
    	init.gps.rc \
    	init.power.rc \
    	init.rilchip.rc \
    	init.rilcommon.rc \
    	init.samsung.rc \
    	init.samsungexynos8895.rc \
    	init.samsungexynos8895.usb.rc \
    	init.usb.configfs.rc \
    	init.wifi.rc \
    	ueventd.samsungexynos8895.rc \
    	vold.rc

# Power
PRODUCT_PACKAGES += \
	power.exynos5 \
	android.hardware.power@1.0-impl

# Charger
PRODUCT_PACKAGES += \
	charger_res_images \
	lineage_charger_res_images

# DtbTool
PRODUCT_PACKAGES += \
	dtbhtoolExynos

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk

# System properties
include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos8895/exynos8895.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/dream-common/dream-common-vendor.mk)
