#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a17 device
$(call inherit-product, device/samsung/a17/device.mk)

PRODUCT_DEVICE := a17
PRODUCT_NAME := omni_a17
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A175F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a17xx-user 12 SP1A.210812.016 A175FXXU1AYH4 release-keys"

BUILD_FINGERPRINT := samsung/a17xx/a17:12/SP1A.210812.016/A175FXXU1AYH4:user/release-keys
