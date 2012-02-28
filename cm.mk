## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/zte/blade/device_blade.mk)

PRODUCT_NAME := cm_blade
PRODUCT_RELEASE_NAME := blade

-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blade

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=blade BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys" 
PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys"

# Goo Manager supprt
PRODUCT_PROPERTY_OVERRIDES += \
   ro.goo.board=skate \
   ro.goo.developerid=tilal6991 \
   ro.goo.rom=cm9blade \
   ro.goo.version=$(shell date +%Y%m%d)
