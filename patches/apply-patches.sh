#!/bin/bash
cd system/core
git apply -v ../../device/meizu/m5c/patches/system_core.patch
cd ../..
cd bionic
git apply -v ../device/meizu/m5c/patches/bionic.patch
cd ..
cd system/sepolicy
git apply -v ../../device/meizu/m5c/patches/system_sepolicy.patch
cd ../..
cd frameworks/av
git apply -v ../../device/meizu/m5c/patches/frameworks_av.patch
cd ..
cd native
git apply -v ../../device/meizu/m5c/patches/frameworks_native.patch
cd ..
cd base
git apply -v ../../device/meizu/m5c/patches/frameworks_base.patch
cd ..
cd opt/telephony
git apply -v ../../../device/meizu/m5c/patches/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
git apply -v ../../../device/meizu/m5c/patches/snap.patch
cd ..
cd FMRadio
git apply -v ../../../device/meizu/m5c/patches/fmradio.patch
cd ..
cd Settings
git apply -v ../../../device/meizu/m5c/patches/dekomp.patch
cd ../../..
cd system/netd
git apply -v ../../device/meizu/m5c/patches/system_netd.patch
cd ../..
cd vendor/cmsdk
git apply -v ../../device/meizu/m5c/patches/vendor_cmsdk.patch
cd ../..

