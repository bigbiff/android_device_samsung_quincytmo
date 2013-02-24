$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/quincytmo/i717-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/quincytmo/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/quincytmo/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_quincytmo
PRODUCT_DEVICE := quincytmo

PRODUCT_COPY_FILES := device/samsung/quincytmo/runatboot.sh:recovery/root/sbin/runatboot.sh
