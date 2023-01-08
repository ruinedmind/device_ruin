#
# Copyright (C) 2023 PixelOS Android
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := samsung

DEVICE_PATH := device/samsung/m51

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

# Assert
TARGET_OTA_ASSERT_DEVICE := m51

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true

# Broken Build Rules
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
RELAX_USES_LIBRARY_CHECK := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# FM
BOARD_HAVE_QCOM_FM := true

# GPS
LOC_HIDL_VERSION := 4.0

# Display density
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/compatibility_matrix.xml
ODM_MANIFEST_SKUS += m51
ODM_MANIFEST_M51_FILES := $(DEVICE_PATH)/configs/manifest-nfc.xml

# Kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
    androidboot.hardware=qcom \
    androidboot.usbcontroller=a600000.dwc3 \
    console=ttyMSM0,115200n8 \
    earlycon=msm_geni_serial,0xa90000 \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    service_locator.enable=1

BOARD_MKBOOTIMG_ARGS := --header_version 2

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := m51_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/m51

# Media
TARGET_USES_ION := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_DTBOIMG_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 82726912
BOARD_SUPER_PARTITION_SIZE := 8053063680

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system vendor
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8048869376

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE       := 4852842496
BOARD_VENDORIMAGE_PARTITION_SIZE       := 911626240
BOARD_PRODUCTIMAGE_PARTITION_SIZE      := 1109790720
BOARD_ODMIMAGE_PARTITION_SIZE     	  := 4349952

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_VENDOR := vendor

BOARD_USES_METADATA_PARTITION := true

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# SEPolicy
TARGET_SEPOLICY_DIR := msmsteppe
include device/qcom/sepolicy_vndr-legacy-um/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Inherit from proprietary files
include vendor/m51/m51/BoardConfigVendor.mk