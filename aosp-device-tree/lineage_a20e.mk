#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a20e device
$(call inherit-product, device/samsung/a20e/device.mk)

PRODUCT_DEVICE := a20e
PRODUCT_NAME := lineage_a20e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A202F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a20exx-user 11 RP1A.200720.012 A202FXXU5CWF2 release-keys"

BUILD_FINGERPRINT := samsung/a20exx/a20e:11/RP1A.200720.012/A202FXXU5CWF2:user/release-keys
