# binghe-openwrt-plugin

## howto build
1. ./scripts/feeds update -a
2. ./scripts/feeds install -a
3. make menuconfig
4. make package/binghe-openwrt-plugin/compile

## 可靠方式
1. extract sdk
2. cp Repo -> package/
3. make menuconfig
4. make package/binghe-openwrt-plugin/compile
