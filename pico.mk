# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    libgenlock \
    dexpreopt \
    lights.msm7x27a \
    sensors.msm7x27a \
    gps.msm7x27a \
    librpc \
    power.msm7x27a
    
# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Init
PRODUCT_COPY_FILES += \
    device/htc/pico/ramdisk/init.pico.rc:root/init.pico.rc \
    device/htc/pico/ramdisk/ueventd.pico.rc:root/ueventd.pico.rc \
    device/htc/pico/ramdisk/init.pico.usb.rc:root/init.pico.usb.rc
    
# Camera
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
    device/htc/pico/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/pico/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/pico/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/pico/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/pico/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/pico/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    device/htc/pico/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    device/htc/pico/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    device/htc/pico/proprietary/bin/awb_camera:system/bin/awb_camera \
    device/htc/pico/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    device/htc/pico/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/pico/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/pico/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml
    
# OMX
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/htc/pico/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/htc/pico/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/htc/pico/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/pico/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/pico/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/pico/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/htc/pico/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so
    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.adb.enable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 
    
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/pico/configs/etc/vold.fstab:system/etc/vold.fstab

#Bluetooth conf
PRODUCT_COPY_FILES += \
    device/htc/pico/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
    
# Wifi
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/pico/proprietary/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/pico/proprietary/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
    device/htc/pico/configs/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/pico/configs/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/pico/configs/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf 
    
# Audio
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/pico/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/pico/proprietary/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/pico/proprietary/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/pico/proprietary/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/pico/proprietary/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    device/htc/pico/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/htc/pico/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/lib/hw/sensors.msm7x27a.so:system/lib/hw/sensors.msm7x27a.so

# 3D (Qualcomm Android 4.2.2 Adreno Blobs)
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/app/ProfilerPlaybackTools.apk:system/app/ProfilerPlaybackTools.apk \
    device/htc/pico/proprietary/bin/gpu_dcvsd:system/bin/gpu_dcvsd \
    device/htc/pico/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/pico/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/pico/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/pico/proprietary/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/htc/pico/proprietary/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/htc/pico/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/pico/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/pico/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/pico/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/pico/proprietary/lib/libadreno_utils.so:system/lib/libadreno_utils.so \
    device/htc/pico/proprietary/lib/libc2d2_a3xx.so:system/lib/libc2d2_a3xx.so \
    device/htc/pico/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/pico/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/pico/proprietary/lib/libCB.so:system/lib/libCB.so \
    device/htc/pico/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/pico/proprietary/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
    device/htc/pico/proprietary/lib/libllvm-arm.so:system/lib/libllvm-arm.so \
    device/htc/pico/proprietary/lib/libOpenCL.so:system/lib/libOpenCL.so \
    device/htc/pico/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/pico/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/pico/proprietary/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
    device/htc/pico/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/pico/proprietary/lib/egl/libEGL_adreno.so:system/lib/egl/libEGL_adreno.so \
    device/htc/pico/proprietary/lib/egl/libGLESv1_CM_adreno.so:system/lib/egl/libGLESv1_CM_adreno.so \
    device/htc/pico/proprietary/lib/egl/libGLESv2_adreno.so:system/lib/egl/libGLESv2_adreno.so \
    device/htc/pico/proprietary/lib/egl/libplayback_adreno.so:system/lib/egl/libplayback_adreno.so \
    device/htc/pico/proprietary/lib/egl/libq3dtools_adreno.so:system/lib/egl/libq3dtools_adreno.so 
    
# RIL
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/pico/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/pico/proprietary/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/pico/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/pico/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/pico/proprietary/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/pico/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/pico/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd:system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd

# Misc Blobs
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/bin/bma150_usr:system/bin/bma150_usr \
    device/htc/pico/proprietary/bin/htc_ebdlogd:system/bin/htc_ebdlogd \
    device/htc/pico/proprietary/bin/logcat2:system/bin/logcat2 \
    device/htc/pico/proprietary/bin/charging:system/bin/charging \
    device/htc/pico/proprietary/bin/udhcpd:system/bin/udhcpd \
    device/htc/pico/proprietary/bin/zchgd:system/bin/zchgd

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/pico/proprietary/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/pico/proprietary/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/pico/proprietary/usr/keychars/pico-keypad.kcm.bin:system/usr/keychars/pico-keypad.kcm.bin \
    device/htc/pico/proprietary/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/pico/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pico/proprietary/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/pico/proprietary/usr/keylayout/pico-keypad.kl:system/usr/keylayout/pico-keypad.kl \
    device/htc/pico/proprietary/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/pico/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/pico/proprietary/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/pico/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/pico/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pico/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Charging Animation
PRODUCT_COPY_FILES += \
    device/htc/pico/media/zchgd/batt_0.rle:system/media/zchgd/batt_0.rle \
    device/htc/pico/media/zchgd/batt_5.rle:system/media/zchgd/batt_5.rle \
    device/htc/pico/media/zchgd/batt_10.rle:system/media/zchgd/batt_10.rle \
    device/htc/pico/media/zchgd/batt_20.rle:system/media/zchgd/batt_20.rle \
    device/htc/pico/media/zchgd/batt_30.rle:system/media/zchgd/batt_30.rle \
    device/htc/pico/media/zchgd/batt_40.rle:system/media/zchgd/batt_40.rle \
    device/htc/pico/media/zchgd/batt_50.rle:system/media/zchgd/batt_50.rle \
    device/htc/pico/media/zchgd/batt_60.rle:system/media/zchgd/batt_60.rle \
    device/htc/pico/media/zchgd/batt_70.rle:system/media/zchgd/batt_70.rle \
    device/htc/pico/media/zchgd/batt_80.rle:system/media/zchgd/batt_80.rle \
    device/htc/pico/media/zchgd/batt_90.rle:system/media/zchgd/batt_90.rle \
    device/htc/pico/media/zchgd/batt_95.rle:system/media/zchgd/batt_95.rle \
    device/htc/pico/media/zchgd/batt_100.rle:system/media/zchgd/batt_100.rle \
    device/htc/pico/media/zchgd/charging_00.rle:system/media/zchgd/charging_00.rle \
    device/htc/pico/media/zchgd/charging_01.rle:system/media/zchgd/charging_01.rle \
    device/htc/pico/media/zchgd/charging_02.rle:system/media/zchgd/charging_02.rle \
    device/htc/pico/media/zchgd/charging_03.rle:system/media/zchgd/charging_03.rle \
    device/htc/pico/media/zchgd/charging_04.rle:system/media/zchgd/charging_04.rle \
    device/htc/pico/media/zchgd/charging_05.rle:system/media/zchgd/charging_05.rle \
    device/htc/pico/media/zchgd/charging_06.rle:system/media/zchgd/charging_06.rle \
    device/htc/pico/media/zchgd/charging_07.rle:system/media/zchgd/charging_07.rle \
    device/htc/pico/media/zchgd/charging_08.rle:system/media/zchgd/charging_08.rle \
    device/htc/pico/media/zchgd/charging_09.rle:system/media/zchgd/charging_09.rle \
    device/htc/pico/media/zchgd/error.rle:system/media/zchgd/error.rle

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=pico \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.sys.purgeable_assets=1

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
