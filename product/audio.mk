DEVICE_PATH := device/samsung/dream-common

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_effects_sec.conf:system/etc/audio_effects_sec.conf \
    	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    	$(LOCAL_PATH)/configs/audio/mixer_gains.xml:system/etc/mixer_gains.xml \
    	$(LOCAL_PATH)/configs/audio/mixer_gains_r00.xml:system/etc/mixer_gains_r00.xml \
    	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    	$(LOCAL_PATH)/configs/audio/mixer_paths_r00.xml:system/etc/mixer_paths_r00.xml \
    	$(LOCAL_PATH)/configs/audio/mixer_paths_r01.xml:system/etc/mixer_paths_r01.xm \
    	$(LOCAL_PATH)/configs/audio/stage_policy.conf:system/etc/stage_policy.conf \

# Packages
PRODUCT_PACKAGES += \
	audio.a2dp.default \
    	audio.usb.default \
    	audio.r_submix.default \
    	audio.primary.universal8895 \
	android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl 

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio_hal.force_voice_config=wide
