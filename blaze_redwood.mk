#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit blaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# MiUI Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

# blaze flags
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := Thereache(RUSHI)
TARGET_SUPPORTS_DOLBY_VISION := true

# System Stuff
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320G
PRODUCT_NAME := blaze_redwood

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redwood_global-user 14 UKQ1.231003.002 V816.0.4.0.UMSMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/redwood_global/redwood:14/UKQ1.231003.002/V816.0.4.0.UMSMIXM:user/release-keys

