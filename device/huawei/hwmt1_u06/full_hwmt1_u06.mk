# Inherit AOSP device configuration for mako
$(call inherit-product, device/huawei/hwmt1_u06/device_hwmt1_u06.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/hwmt1_u06

# bootanimation target
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := MT1-U06


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwmt1_u06
PRODUCT_NAME := full_hwmt1_u06
PRODUCT_BRAND := huawei
PRODUCT_MODEL := MT1-U06
PRODUCT_MANUFACTURER := HUAWEI

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=P6-U06 BUILD_FINGERPRINT="Huawei/P6-U06/hwp6-u06:4.2.2/HuaweiP6-U06/C17B120:user/ota-rel-keys,release-keys" PRIVATE_BUILD_DESC="P6-U06-user 4.2.2 HuaweiP6-U06 C17B120 ota-rel-keys,release-keys"
