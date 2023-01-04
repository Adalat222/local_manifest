repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b tiramisu -g default,-mips,-darwin,-notdefault 
git clone --depth=1 https://github.com/iitzrohan/device_xiaomi_gauguin device/xiaomi/gauguin
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

. build/envsetup.sh

export TZ=Asia/Kolkata
lunch aosp_sweet-userdebug
mka bacon -jX
