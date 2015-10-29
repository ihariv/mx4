## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := mx4

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/mx4/device_arale.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mx4
PRODUCT_NAME := cm_mx4
PRODUCT_BRAND := meizu
PRODUCT_MODEL := mx4
PRODUCT_MANUFACTURER := meizu
