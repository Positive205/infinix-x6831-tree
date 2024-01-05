#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6831 device
$(call inherit-product, device/infinix/X6831/device.mk)

PRODUCT_DEVICE := X6831
PRODUCT_NAME := twrp_X6831
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6831
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6831_v7520-user 12 SP1A.210812.016 379117 release-keys"

BUILD_FINGERPRINT := Infinix/X6831-OP/Infinix-X6831:12/SP1A.210812.016/230714V1377:user/release-keys
