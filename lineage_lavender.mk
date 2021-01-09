#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Sakura stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Sakura build flags
SAKURA_MAINTAINER := sohamsen(predatorx91)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V11.0.1.0.QFGMIXM release-keys"

BUILD_FINGERPRINT :="google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys"
