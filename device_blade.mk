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

# proprietary side of the device
$(call inherit-product-if-exists, vendor/zte/blade/blade-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := zte_blade
PRODUCT_DEVICE := blade
PRODUCT_MODEL := ZTE Blade

$(call inherit-product-if-exists, vendor/zte/common/zte_common.mk)

DEVICE_PACKAGE_OVERLAYS := device/zte/blade/overlay

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES := en_GB
# Blade uses high-density artwork where available
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video Decoding
PRODUCT_PACKAGES += \
    libopencorehw \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \

# Graphics
PRODUCT_PACKAGES += \
    hwcomposer.default

# Apps
PRODUCT_PACKAGES += \
    Gallery2

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Other
PRODUCT_PACKAGES += \
    prox_cal \
    lights.blade \
    gps.blade \
    sensors.blade

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#Kernel Modules
PRODUCT_COPY_FILES += device/zte/blade/prebuilt/system/wifi/ar6000.ko:system/wifi/ar6000.ko 

#WiFi firmware
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/wifi/regcode:system/wifi/regcode \
    device/zte/blade/prebuilt/system/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/zte/blade/prebuilt/system/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/zte/blade/prebuilt/system/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin
# Init
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/init.blade.rc:root/init.blade.rc \
    device/zte/blade/prebuilt/init.blade.usb.rc:root/init.blade.usb.rc \
    device/zte/blade/prebuilt/ueventd.blade.rc:root/ueventd.blade.rc \
    device/zte/blade/prebuilt/usbconfig:root/sbin/usbconfig

# Keypad files
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/usr/keylayout/blade_keypad.kl:system/usr/keylayout/blade_keypad.kl \
    device/zte/blade/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/blade/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/zte/blade/prebuilt/usr/idc/synaptics-rmi4-ts.idc:system/usr/idc/synaptics-rmi4-ts.idc

# RIL
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/lib/libril.so:system/lib/libril.so \
    device/zte/blade/prebuilt/lib/libril.so:obj/lib/libril.so

# Vold
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# EGL and gralloc module from SEMC
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/lib/hw/gralloc.blade.so:system/lib/hw/gralloc.blade.so \
    device/zte/blade/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/blade/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/blade/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/blade/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

# GPS
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
    device/zte/blade/prebuilt/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/zte/blade/prebuilt/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so

# Audio
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/zte/blade/prebuilt/lib/hw/audio.primary.blade.so:system/lib/hw/audio.primary.blade.so \
    device/zte/blade/prebuilt/lib/hw/audio_policy.blade.so:system/lib/hw/audio_policy.blade.so

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko


PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=1
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=mdp
PRODUCT_PROPERTY_OVERRIDES += debug.gr.numframebuffers=2

# HardwareRenderer properties
# dirty_regions: "false" to disable partial invalidates, override if enabletr=true
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    debug.enabletr=false

# Misc properties
# events_per_sec: default 90
PRODUCT_PROPERTY_OVERRIDES += \
    pm.sleep_mode=true \
    ro.telephony.call_ring.delay=2 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960
