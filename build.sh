repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b tiramisu -g default,-mips,-darwin,-notdefault 
repo sync -c -j8 --force-sync --no-clone-bundle --no-tags
git clone --depth=1 https://github.com/iitzrohan/device_xiaomi_gauguin device/xiaomi/gauguin

. build/envsetup.sh

export TZ=Asia/Kolkata
lunch evolution_gauguin-userdebug
mka evolution
