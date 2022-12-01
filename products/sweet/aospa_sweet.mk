#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Check for target product
ifeq (aospa_sweet,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := sweet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_NAME := aospa_sweet

TARGET_CALL_RECORDING_SUPPORTED := true

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

endif
