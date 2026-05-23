export LC_ALL=C
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"
./prebuilts/sdk/tools/jack-admin kill-server
./prebuilts/sdk/tools/jack-admin start-server
source build/envsetup.sh
lunch lineage_m5c-userdebug && mka bacon
