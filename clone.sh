echo y | repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-20.0
repo sync -c -j5 --force-sync --no-clone-bundle --no-tags --fail-fast
git clone --depth=1 https://github.com/Molyuu/device_xiaomi_gauguin -b lineage-20.0 device/xiaomi/gauguin
git clone --depth=1 https://github.com/Molyuu/vendor_xiaomi_gauguin vendor/xiaomi/gauguin
. build/envsetup.sh
