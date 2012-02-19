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

#
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

DEVICE_PACKAGE_OVERLAYS := device/zte/blade/overlay

LOCAL_PATH := $(call my-dir)

-include $(LOCAL_PATH)/Android.mk

$(call inherit-product-if-exists, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, device/zte/blade/blade-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := zte_blade
PRODUCT_DEVICE := blade
PRODUCT_MODEL := Blade
PRODUCT_MANUFACTURER := ZTE

PRODUCT_PACKAGES += \
    librs_jni \
    Gallery3d \
    SpareParts \
    Development \
    Term \
    hwcomposer.default \
    gps.blade \
    lights.blade \
    sensors.blade \
    libstagefrighthw \
    libopencorehw \
    libOmxCore \
    libOmxVidEnc \
    FM \
    abtfilt \
    prox_cal \
    dexpreopt

# proprietary side of the device
$(call inherit-product-if-exists, vendor/zte/blade/blade-vendor.mk)

DISABLE_DEXPREOPT := false

PRODUCT_COPY_FILES += \
    	device/zte/blade/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/zte/blade/prebuilt/system/usr/keylayout/blade_keypad.kl:system/usr/keylayout/blade_keypad.kl \
	device/zte/blade/prebuilt/system/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	device/zte/blade/prebuilt/system/etc/spn-conf.xml:system/etc/spn-conf.xml

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
    device/zte/blade/prebuilt/system/lib/hw/audio.primary.blade.so:system/lib/hw/audio.primary.blade.so \
    device/zte/blade/prebuilt/system/lib/hw/audio_policy.blade.so:system/lib/hw/audio_policy.blade.so \
    device/zte/blade/prebuilt/system/lib/libcamera.so:system/lib/libcamera.so \
    device/zte/blade/prebuilt/system/lib/libcameraservice.so:system/lib/libcameraservice.so \
    device/zte/blade/prebuilt/system/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/zte/blade/prebuilt/system/lib/libril.so:system/lib/libril.so \
    device/zte/blade/prebuilt/system/lib/libcamera.so:obj/lib/libcamera.so \
    device/zte/blade/prebuilt/system/lib/libcameraservice.so:obj/lib/libcameraservice.so \
    device/zte/blade/prebuilt/system/lib/libcamera_client.so:obj/lib/libcamera_client.so \
    device/zte/blade/prebuilt/system/lib/libril.so:obj/lib/libril.so \
    device/zte/blade/prebuilt/system/lib/hw/gralloc.blade.so:system/lib/hw/gralloc.blade.so \
    device/zte/blade/prebuilt/system/lib/hw/copybit.blade.so:system/lib/hw/copybit.blade.so \
    device/zte/blade/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/blade/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/blade/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/blade/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/zte/blade/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/blade/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/etc/init.bt.sh:system/etc/init.bt.sh \
    device/zte/blade/prebuilt/system/bin/hostapd:system/bin/hostapd \
    device/zte/blade/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/zte/blade/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/blade/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

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

# Media profile
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.sf.hwrotation=180 \
    persist.sys.use_16bpp_alpha=1

# Blade uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=1
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=mdp
PRODUCT_PROPERTY_OVERRIDES += debug.gr.numframebuffers=2

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=240 

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=2 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength,facilitylock \
    ro.build.baseband_version=P729BB01 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false

# HardwareRenderer properties
# dirty_regions: "false" to disable partial invalidates, override if enabletr=true
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    debug.enabletr=false

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=v=n,o=v,m=y \
    dalvik.vm.checkjni=false

# Don't set /proc/sys/vm/dirty_ratio to 0 when USB mounting
PRODUCT_PROPERTY_OVERRIDES += ro.vold.umsdirtyratio=20

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

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0 \
    persist.sys.strictmode.disable=true \
    persist.sys.usb.config=mass_storage,adb \
    ro.build.fingerprint=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys
