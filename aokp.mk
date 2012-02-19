$(call inherit-product, device/zte/blade/device_blade.mk)

PRODUCT_RELEASE_NAME := Blade

$(call inherit-product, vendor/aokp/products/common.mk)

$(call inherit-product, vendor/aokp/products/common_versions.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := aokp_blade
PRODUCT_DEVICE := blade
