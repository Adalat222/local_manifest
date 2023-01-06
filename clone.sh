echo y | repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-20.0 -g default,-mips,-darwin,-notdefault
repo sync -c -j1 --force-sync --no-clone-bundle --no-tags --fail-fast
git clone --depth=1 https://github.com/Adalat222/android_device_xiaomi_gauguin device/xiaomi/gauguin
