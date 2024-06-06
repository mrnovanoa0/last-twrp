# Copyright (C) [Year] [Your Name/Organization]
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from full_base product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Include 32-bit core configuration for A1k
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Include embedded configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Include common Omni configurations
$(call inherit-product, vendor/omni/config/common.mk)

# Add device-specific prebuilt kernel
PRODUCT_COPY_FILES += device/oppo/cph1923/prebuilt/zImage:kernel

# Device identifier
PRODUCT_DEVICE := cph1923
PRODUCT_NAME := omni_cph1923
PRODUCT_BRAND := oppo
PRODUCT_MODEL := cph1923
PRODUCT_MANUFACTURER := oppo

# USB configuration override
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Build properties overrides
PRODUCT_BUILD_PROP_OVERRIDES += \

BUILD_DESCRIPTION=full_oppo6762_18540-user 9 PPR1.180610.011 eng.root.20190716.170229 release-keys
