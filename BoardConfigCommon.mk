##### Board configuration for ZTE SmartTabs #####
### Copyright nobody because it's a fucking   ###
### Makefile and it's ridiculous to copyright ###
### such a document.            --ultraviolet ###
#################################################

TARGET_SPECIFIC_HEADER_PATH := device/zte/smarttab-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true
BOARD_WANTS_EMMC_BOOT := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Compile Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ICS_DECODERS -DQCOM_NO_DMX_SUPPORT

# Bootloader
TARGET_NO_BOOTLOADER := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := true

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# Media
TARGET_PREBUILT_HEADERS := true
TARGET_QCOM_MEDIA_VARIANT := legacy

# Audio
TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE -DPOLL_CALL_STATE -DUSE_QMI

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/zte/smarttab-common/bluetooth/smarttab.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/smarttab-common/bluetooth/include

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_HOSTAPD_DRIVER := WEXT
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4330_b2
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_AP_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_AP_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcm4330_b2.bin"
#WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/bcm4330_p2p_b2.bin"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/fw_bcm4330_apsta_b2.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4330_b2.bin nvram_path=/persist/zte/wifi/bcm.txt"
#WIFI_AP_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/fw_bcm4330_apsta_b2.bin nvram_path=/persist/zte/wifi/bcm.txt"
CONFIG_DRIVER_WEXT := true
WIFI_BAND := 802_11_ABGN
BOARD_WEXT_NO_COMBO_SCAN := true
BOARD_NETWORK_INTERFACES_DIR := "/sys/devices/virtual/net"
PRODUCT_WIRELESS_TOOLS := true

# Camera
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
BOARD_CAMERA_USE_MM_HEAP := true

# GPS
TARGET_PROVIDES_GPS_LOC_API := true
TARGET_QCOM_GPS_VARIANT := legacy
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_USES_LEGACY_MEDIA := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_PMEM := true

# HDMI
TARGET_QCOM_HDMI_OUT := true
TARGET_HAVE_HDMI_OUT := true

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Sensors
BOARD_INVENSENSE_APPLY_COMPASS_NOISE_FILTER := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Partitions
TARGET_RECOVERY_FSTAB := device/zte/smarttab-common/ramdisk/fstab.smarttab
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14285799424
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_MISC_PARTITION := true

# Kernel Config
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=smarttab vmalloc=512M kgsl.ptcount=14
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/zte/smarttab

# SD Card		
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1
BOARD_USES_MMCUTILS := true

# Insecure Boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Vold/UMS Stuff
BOARD_VOLD_MAX_PARTITIONS := 30
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Recovery (TWRP)
TARGET_PROVIDES_RECOVERY_INIT_RC := true
TARGET_RECOVERY_INITRC := device/zte/smarttab-common/recovery/init.rc
TARGET_RECOVERY_GUI := true
DEVICE_RESOLUTION := 1280x800
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/smarttab-common/recovery/minui/graphics.c
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true 
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
HAVE_SELINUX := true

TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))
