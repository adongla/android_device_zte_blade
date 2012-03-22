# Copyright (C) 2007 The Android Open Source Project
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

-include device/zte/common/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=blade console=null

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := blade

# QCOM and GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_GPS_LIBRARIES := libloc_api
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := blade

# Wifi related defines
WIFI_DRIVER_MODULE_NAME := ar6000
BOARD_WPA_SUPPLICANT_DRIVER := ar6000
CONFIG_DRIVER_AR6000 := true
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := ar6000
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
BOARD_WEXT_NO_COMBO_SCAN := true

# Partition sizes
# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00480000 00020000 "recovery"
# mtd1: 00480000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00060000 00020000 "misc"
# mtd4: 02940000 00020000 "cache"
# mtd5: 0cf80000 00020000 "system"
# mtd6: 0d020000 00020000 "userdata"
# mtd7: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00480000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00900000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0cf80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d020000
BOARD_FLASH_BLOCK_SIZE := 131072
