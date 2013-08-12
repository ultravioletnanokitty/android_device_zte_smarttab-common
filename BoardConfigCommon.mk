##### Board configuration for ZTE SmartTabs #####
### Copyright nobody because it's a fucking   ###
### Makefile and it's ridiculous to copyright ###
### such a document.            --ultraviolet ###
#################################################

TARGET_SPECIFIC_HEADER_PATH := device/zte/smarttab-common/include

# CPU/Board Architecture
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USES_PMEM := true
BOARD_USE_QCOM_PMEM := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_HAVE_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_NO_HW_VSYNC := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USES_GENLOCK := true
BOARD_EGL_CFG := device/zte/smarttab-common/config/egl.cfg

# Compile Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS -DQCOM_NO_SECURE_PLAYBACK

# Bootloader
TARGET_NO_BOOTLOADER := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_CAMERA_STUB := false

# Scorpion
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# HDMI
TARGET_QCOM_HDMI_OUT := true
TARGET_HAVE_HDMI_OUT := true
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true

# Browser
ENABLE_WEBGL := true
WEBCORE_INPAGE_VIDEO := true
TARGET_FORCE_CPU_UPLOAD := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
    
# Audio
TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE

# FM Radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

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

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Sensors
BOARD_INVENSENSE_APPLY_COMPASS_NOISE_FILTER := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14285799424
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_MISC_PARTITION := true

# Kernel Config
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom vmalloc=512M kgsl.ptcount=14
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
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 1280x800
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/smarttab-common/recovery/minui/graphics.c
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard-ext"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard-ext"
TW_FLASH_FROM_STORAGE := true 
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true

#SP1_NAME := "modem"
#SP1_DISPLAY_NAME := "NON-HLOS (modem Firmware)"
#SP1_BACKUP_METHOD := image
#SP1_MOUNTABLE := 1
#SP2_NAME := "persist"
#SP2_BACKUP_METHOD := image
#SP2_MOUNTABLE := 1
#SP3_NAME := "aboot"
#SP3_DISPLAY_NAME := "Appsboot"
#SP3_BACKUP_METHOD := image
#SP3_MOUNTABLE := 1
