## TWRP device tree for Samsung Galaxy S II (International) - I9100


Device configurations:
========================================

Basic   | Specification List
-------:|:-------------------------
CPU     | Dual-core 1.2 GHz Cortex-A9
Chipset | Exynos 4210 Dual
GPU     | Mali-400MP4
Memory  | 1 GB
Shipped Android Version | Android 2.3.4 (Gingerbread), 4.0.4 (Ice Cream Sandwich), upgradable to 4.1 (Jelly Bean)
Storage | 16 GB/32 GB
MicroSD | Up to 32 GB (dedicated slot)
Battery | Removable Li-Ion 1650 mAh
Dimensions | 125.3 x 66.1 x 8.5 mm (4.93 x 2.60 x 0.33 in)
Display | 480 x 800 pixels, 4.3"
Rear Camera  | 8 MP (f/2.6, 1/3.2"), autofocus, LED flash
Front Camera | 2 MP
Release Date | April 2011



![Galaxy SII International](https://cdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s-ii-i9100-white-glossy-color.jpg "Galaxy SII International")


## Instructions for build:

1. Create file i9100.xml in local_manifests:
```
mkdir .repo/local_manifests
nano .repo/local_manifests/i9100.xml

```

2. Add to `.repo/local_manifests/i9100.xml`:


```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
   <project name="TeamWin/android_device_samsung_i9100" path="device/samsung/i9100" remote="github" revision="android-7.1" />
</manifest>
```


3. Run `repo sync --no-tags --no-clone-bundle --force-sync -c` to check it out...


4. And build!

```sh
. build/envsetup.sh
lunch omni_i9100-eng
mka recoveryimage
```


When the compilation finishes, go to the path indicated (out/target/product/i9100) and copy the file 'recovery.img'.

Kernel source: https://github.com/LineageOS/android_kernel_samsung_smdk4412/tree/cm-14.1
