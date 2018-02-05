DEVICE_PATH := device/samsung/dream-common

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/keylayout/samsung.kl:system/usr/keylayout/samsung.kl \
	$(LOCAL_PATH)/configs/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
    	$(LOCAL_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
