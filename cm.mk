# Release name
PRODUCT_RELEASE_NAME := quincytmo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/quincytmo/device_quincytmo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := quincytmo
PRODUCT_NAME := cm_quincytmo
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := quincytmo
PRODUCT_MANUFACTURER := Samsung
