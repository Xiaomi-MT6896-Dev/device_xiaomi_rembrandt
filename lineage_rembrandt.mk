#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rembrandt device
$(call inherit-product, device/xiaomi/rembrandt/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := rembrandt
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22122RK93C
PRODUCT_NAME := lineage_rembrandt

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rembrandt-user 14 UP1A.231005.007 V816.0.12.0.UMMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/rembrandt/rembrandt:14/UP1A.231005.007/V816.0.12.0.UMMCNXM:user/release-keys
