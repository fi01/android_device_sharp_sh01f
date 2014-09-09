$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sharp/sh01f/sh01f-vendor.mk)

PRODUCT_COPY_FILES += \
  device/sharp/sh01f/root/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
  device/sharp/sh01f/system/shtps_key.idc:system/usr/idc/shtps_key.idc \
  device/sharp/sh01f/system/shtps_rmi.idc:system/usr/idc/shtps_rmi.idc

DEVICE_PACKAGE_OVERLAYS += device/sharp/sh01f/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_sh01f
PRODUCT_DEVICE := sh01f
