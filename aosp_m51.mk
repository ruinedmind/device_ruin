#
# Copyright (C) 2022 PixelOS Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/m51/device_m51.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit ANX Camera
$(call inherit-product, vendor/ANXCamera/config.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung M51
PRODUCT_MANUFACTURER := Samsung

BUILD_FINGERPRINT := "samsung/m51nsxx/qssi:12/SP1A.210812.016/M515FXXS4DVF2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m51nsxx-user 12 SP1A.210812.016 M515FXXS4DVF2 release-keys" \
    PRODUCT_NAME="m51"

PRODUCT_GMS_CLIENTID_BASE := android-samsung