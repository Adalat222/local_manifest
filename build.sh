export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
lunch evolution_gauguin-userdebug && mka evolution
