# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Proprietary and common side of the device
$(call inherit-product, vendor/zte/blade/blade-vendor.mk)
$(call inherit-product, device/zte/common/device_zte.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := blade
PRODUCT_DEVICE := blade
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE Blade

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_CONFIG := normal hdpi

# Libs
PRODUCT_PACKAGES += \
    librpc \
    gps.blade \
    sensors.blade \
    audio.primary.blade \
    audio_policy.blade \
    camera.blade \
    lights.blade

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/zte/blade/prebuilt/usr/keylayout/blade_keypad.kl:system/usr/keylayout/blade_keypad.kl

# Init
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/init.blade.rc:root/init.blade.rc \
    device/zte/blade/prebuilt/init.blade.usb.rc:root/init.blade.usb.rc \
    device/zte/blade/prebuilt/ueventd.blade.rc:root/ueventd.blade.rc

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/etc/init.bt.sh:system/etc/init.bt.sh \
    device/zte/blade/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/zte/blade/prebuilt/bin/hostapd:system/bin/hostapd

# WiFi
PRODUCT_COPY_FILES += device/zte/blade/prebuilt/wifi/ar6000.ko:system/wifi/ar6000.ko \
    device/zte/blade/prebuilt/wifi/regcode:system/wifi/regcode \
    device/zte/blade/prebuilt/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/zte/blade/prebuilt/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/zte/blade/prebuilt/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/zte/blade/prebuilt/wifi/device.bin:system/wifi/device.bin \
    device/zte/blade/prebuilt/wifi/eeprom.bin:system/wifi/eeprom.bin \
    device/zte/blade/prebuilt/wifi/eeprom.data:system/wifi/eeprom.data
