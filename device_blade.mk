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

# proprietary and common side of the device
$(call inherit-product-if-exists, vendor/zte/blade/blade-vendor.mk)
$(call inherit-product, device/zte/common/device_zte.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := zte_blade
PRODUCT_DEVICE := blade
PRODUCT_MODEL := ZTE Blade

PRODUCT_PACKAGES += \
    gps.blade \
    camera.blade \
    lights.blade \
    audio.primary.blade \
    audio_policy.blade \
    sensors.blade

PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/zte/blade/prebuilt/system/usr/keylayout/blade_keypad.kl:system/usr/keylayout/blade_keypad.kl \
    device/zte/blade/prebuilt/system/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# fstab
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# Init
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/root/init.blade.rc:root/init.blade.rc \
    device/zte/blade/prebuilt/root/init.blade.usb.rc:root/init.blade.usb.rc \
    device/zte/blade/prebuilt/root/ueventd.blade.rc:root/ueventd.blade.rc

# Audio
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/lib/libcamera.so:system/lib/libcamera.so \
    device/zte/blade/prebuilt/system/lib/libcameraservice.so:system/lib/libcameraservice.so \
    device/zte/blade/prebuilt/system/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/zte/blade/prebuilt/system/lib/libril.so:system/lib/libril.so \
    device/zte/blade/prebuilt/system/lib/libcamera.so:obj/lib/libcamera.so \
    device/zte/blade/prebuilt/system/lib/libcameraservice.so:obj/lib/libcameraservice.so \
    device/zte/blade/prebuilt/system/lib/libcamera_client.so:obj/lib/libcamera_client.so \
    device/zte/blade/prebuilt/system/lib/libril.so:obj/lib/libril.so \
    device/zte/blade/prebuilt/system/lib/hw/gralloc.blade.so:system/lib/hw/gralloc.blade.so \
    device/zte/blade/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/blade/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/zte/blade/prebuilt/system/lib/hw/copybit.blade.so:system/lib/hw/copybit.blade.so
#    device/zte/blade/prebuilt/system/lib/hw/audio.primary.blade.so:system/lib/hw/audio.primary.blade.so \

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/etc/init.bt.sh:system/etc/init.bt.sh \
    device/zte/blade/prebuilt/system/bin/hostapd:system/bin/hostapd \
    device/zte/blade/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/zte/blade/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/blade/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \

# Kernel Modules
PRODUCT_COPY_FILES += device/zte/blade/prebuilt/system/wifi/ar6000.ko:system/wifi/ar6000.ko 

# WiFi firmware
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/wifi/regcode:system/wifi/regcode \
    device/zte/blade/prebuilt/system/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/zte/blade/prebuilt/system/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/zte/blade/prebuilt/system/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin

# Media profile
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml
