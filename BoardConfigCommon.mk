# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2017-2019,2021 The LineageOS Project
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

# inherit from qcom-common
include device/samsung/qcom-common/BoardConfigCommon.mk

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_ALSA_AUDIO := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
MALLOC_SVELTE_FOR_LIBC32 := true

# Charger
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.bootchg"
BOARD_CHARGING_CMDLINE_VALUE := "true"

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_DISABLE_POSTRENDER_CLEANUP := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Filesystem
TARGET_FS_CONFIG_GEN := device/samsung/msm8974-common/config.fs

# HIDL
DEVICE_MANIFEST_FILE := device/samsung/msm8974-common/manifest.xml
DEVICE_MATRIX_FILE := device/samsung/msm8974-common/compatibility_matrix.xml

# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true

# SELinux
include device/samsung/msm8974-common/sepolicy/sepolicy.mk

# SOONG
PRODUCT_SOONG_NAMESPACES += hardware/samsung

# Power
TARGET_USES_INTERACTION_BOOST := true

# Prebuilt
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Properties
TARGET_SYSTEM_PROP += device/samsung/msm8974-common/system.prop

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/msm8974-common

# inherit from the proprietary version
include vendor/samsung/msm8974-common/BoardConfigVendor.mk
