echo y | repo init --depth=1 -u https://github.com/LineageOS/android.git -b lineage-20.0
repo sync -c -j5 --force-sync --no-clone-bundle --no-tags --fail-fast
git clone --depth=1 https://github.com/LineageOS/android_device_xiaomi_gauguin device/xiaomi/gauguin
git clone --depth=1 https://github.com/LineageOS/android_kernel_xiaomi_gauguin kernel/xiaomi/gauguin
git clone --depth=1 https://github.com/Molyuu/vendor_xiaomi_gauguin vendor/xiaomi/gauguin
export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
. build/envsetup.sh && lunch evolution_gauguin-userdebug && mka evolution
