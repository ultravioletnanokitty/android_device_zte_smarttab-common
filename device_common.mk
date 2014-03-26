####### Device Makefile for ZTE SmartTabs #######
### Copyright nobody because it's a fucking   ###
### Makefile and it's ridiculous to copyright ###
### such a document.            --ultraviolet ###
#################################################

# Overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Product info
PRODUCT_AAPT_CONFIG := hdpi xhdpi
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    audio_policy.conf

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw 

# Lights
PRODUCT_PACKAGES += \
    lights.msm8660

# GPS
PRODUCT_PACKAGES += \
    gps.msm8660

# Camera
PRODUCT_PACKAGES += \
    camera.default

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem Management Tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Feature Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/input/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
    $(LOCAL_PATH)/input/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
    $(LOCAL_PATH)/input/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/input/icudt44l.dat:system/usr/icu/icudt44l.dat

# Config Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/config/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/initlogo.rle:root/initlogo.rle \
    $(LOCAL_PATH)/ramdisk/ueventd.smarttab.rc:root/ueventd.smarttab.rc \
    $(LOCAL_PATH)/ramdisk/init.smarttab.rc:root/init.smarttab.rc \
    $(LOCAL_PATH)/ramdisk/init.smarttab.usb.rc:root/init.smarttab.usb.rc \
    $(LOCAL_PATH)/ramdisk/fstab.smarttab:root/fstab.smarttab

# fstab files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab 

$(call inherit-product-if-exists, vendor/zte/smarttab/smarttab-vendor-blobs.mk)
