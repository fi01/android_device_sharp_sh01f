## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := sh01f

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sharp/sh01f/device_sh01f.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sh01f
PRODUCT_NAME := cm_sh01f
PRODUCT_BRAND := sharp
PRODUCT_MODEL := sh01f
PRODUCT_MANUFACTURER := sharp
