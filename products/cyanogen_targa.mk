# Inherit device configuration for Droid Bionic.
$(call inherit-product, device/motorola/targa/device_targa.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_targa
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := targa
PRODUCT_MODEL := DROID BIONIC
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=targa_vzw \
   BUILD_ID=5.5.1_84_DBN-71 \
   BUILD_DISPLAY_ID=5.5.1_84_DBN-71 \
   BUILD_FINGERPRINT=verizon/targa_vzw/cdma_targa:2.3.7/5.5.1_84_DBN-71/120106:user/release-keys \
   PRIVATE_BUILD_DESC="cdma_targa-user 2.3.7 5.5.1_84_DBN-71 120106 release-keys" \
   TARGET_DEVICE=cdma_targa \
   PRODUCT_BRAND=verizon \
   BUILD_UTC_DATE= \
   BUILD_NUMBER=120106 \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   USER=dhacker29 \
   BUILD_HOST=rombot.droidhive.com \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

# Extra Droid Bionic overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/solana

# Broadcom FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Add the Torch app
#PRODUCT_PACKAGES += Torch

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

