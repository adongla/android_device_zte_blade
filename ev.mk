$(call inherit-product, device/zte/blade/device_blade.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_blade
PRODUCT_BRAND := zte
PRODUCT_DEVICE := blade
PRODUCT_MODEL := Blade
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRK39F \
BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys \
PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Perdo
ifneq ($(MINISKIRT),true)
PRODUCT_VERSION_DEVICE_SPECIFIC := p9
else
PRODUCT_VERSION_DEVICE_SPECIFIC := p9-Miniskirt
endif

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus One\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#
# Extra Packages
#
PRODUCT_PACKAGES += \
    Stk \
    Camera

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Get some gapps
ifeq ($(GAPPS),true)
$(call inherit-product, vendor/ev/prebuilt/gapps/gapps.mk)
endif
