DEVICE_PATH := device/samsung/dream-common

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    	$(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml \
    	$(LOCAL_PATH)/configs/gps/lhd.conf:system/etc/lhd.conf

PRODUCT_PACKAGES += \
	libsensoreventq


# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
