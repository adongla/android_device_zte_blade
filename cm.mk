$(call inherit-product, device/zte/blade/device_blade.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=blade BUILD_ID=ITL41D BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys" BUILD_NUMBER=223971

PRODUCT_NAME := cm_blade
PRODUCT_DEVICE := blade
PRODUCT_RELEASE_NAME := Blade

# Goo Manager supprt
PRODUCT_PROPERTY_OVERRIDES += \
   ro.goo.board=blade \
   ro.goo.developerid=tilal6991 \
   ro.goo.rom=cm9blade \
   ro.goo.version=$(shell date +%Y%m%d)
