# Device tree for Meizu M5c

Basic   | Spec Sheet
-------:|:-------------------------
Chipset | MediaTek MT6737m
CPU     | Quad-core 1.3 GHz Cortex-A53
GPU     | Mali-T720
Memory  | 2GB RAM
Shipped Android Version | 6.0
Storage | 16 / 32GB
MicroSD | Up to 128GB
Battery | 3000 mAh
Display | 1280 x 720 pixels, 5.0 inches
LCM     | ili9881c_dsi_vdo_dj_hd720  jd9365_dsi_vdo_holitech_hd720
Touchscreen | Goodix GT917D
Camera  | Main 8MP / Front 5MP, autofocus, LED flash

<img width="250" height="300" alt="52940669-removebg-preview" src="https://github.com/user-attachments/assets/e592584b-21ff-4927-9456-75dd53076316" />



# Build instructions
```
# Clone device trees
git clone https://github.com/dekompilyator/android_device_meizu_m5c.git -b los-14.1 device/meizu/m5c
git clone https://github.com/dekompilyator/android_vendor_meizu_m5c.git -b los-14.1 vendor/meizu/m5c

# Apply MediaTek patches
source device/meizu/m5c/patches/apply-patches.sh

# Setup build enviroment and start build (edit for your system config)
source device/meizu/m5c/start-build.sh
```

# Credits
```
nomorecoolnicknames, XRed_CubeX, seluce, iodine71, olegsvs, danielhk, Zormax, xcore995, SRTK

And everyone else who commited!
```
