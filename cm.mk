## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := yaris_m_gsm

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/tct/yaris_m_gsm/device_yaris_m_gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := yaris_m_gsm
PRODUCT_NAME := cm_yaris_m_gsm
PRODUCT_BRAND := tct
PRODUCT_MODEL := 4032A
PRODUCT_MANUFACTURER := tct
