#!/bin/bash
cd openwrt

# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp/luci-app-adguardhome
mv -f package-temp/luci-app-adguardhome package/lean/
rm -rf package-temp

# Add luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
rm -rf theme-temp/luci-theme-opentomcat/LICENSE
rm -rf theme-temp/luci-theme-opentomcat/README.md
mv -f theme-temp/luci-theme-opentomcat package/lean/
rm -rf theme-temp
default_theme='opentomcat'
#sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
### 添加第三方订阅源
#sed -i '$a src-git kiddin9_openwrt_packages https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default
#sed -i '$a src-git kenzok8_openwrt_packages https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git kenzok8_small_package https://github.com/kenzok8/small-package.git' feeds.conf.default
sed -i '1i src-git OpenClash https://github.com/vernesong/OpenClash.git' feeds.conf.default
#sed -i '$a src-git openwrt_passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
#sed -i '$a src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '1i src-git kenzok8_screen https://github.com/siren202101/kenzok8-screen.git' feeds.conf.default



###修改IP###
sed -i 's/192.168.1.1/192.168.88.8/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.88.8/g' package/base-files/luci2/bin/config_generate

###修改luci分支###
sed -i 's/src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-23.05/#src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-23.05/' feeds.conf.default
sed -i 's/#src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-24.10/src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-24.10/' feeds.conf.default

# Add luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp

