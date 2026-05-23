# Device tree for Meizu M5c (UNDER DEVELOPMENT)

Specs
================================
Basic   | Spec Sheet
-------:|:--------------------------------------------------
CPU     | MediaTek MT6737m (Cortex-A53 1.3Ghz)
GPU     | Mali-T720 MP1
Memory  | 2 GB
Screen  | 720x1280
Battery | 3000 mAh
Storage | 16 / 32 GB
Android | 6.0
Kernel  | 3.18.19

<img width="250" height="300" alt="52940669-removebg-preview" src="https://github.com/user-attachments/assets/e592584b-21ff-4927-9456-75dd53076316" />



# Build instructions
```
git clone https://github.com/dekompilyator/android_device_meizu_m5c.git -b los-14.1 device/meizu/m5c
git clone https://github.com/dekompilyator/android_vendor_meizu_m5c.git -b los-14.1 vendor/meizu/m5c
source device/meizu/m5c/patches_mtk/apply-patches.sh
source device/meizu/m5c/start-build.sh
```

# Credits
```
nomorecoolnicknames, XRed_CubeX, seluce, iodine71, olegsvs, danielhk, Zormax, xcore995, SRTK

And everyone else who commited!
```
