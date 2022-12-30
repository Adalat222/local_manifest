echo y | repo init --depth=1 -u https://github.com/Evolution-X/manifest -b tiramisu
repo sync -c -j5 --force-sync --no-clone-bundle --no-tags --fail-fast
git clone --depth=1 https://github.com/DevAdalat/android_device_xiaomi_gauguin device/xiaomi/gauguin
. build/envsetup.sh
