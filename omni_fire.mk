#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from fire device
$(call inherit-product, device/xiaomi/fire/device.mk)

PRODUCT_DEVICE := fire
PRODUCT_NAME := omni_fire
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := fire
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_fire-user 12 TP1A.220624.014 V14.0.13.0.TMXMIXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_fire/fire:12/TP1A.220624.014/V14.0.13.0.TMXMIXM:user/release-keys
