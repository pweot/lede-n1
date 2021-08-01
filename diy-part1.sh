#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-turboacc package/luci-app-turboacc
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-fileassistant package/luci-app-fileassistant
#echo 'src-git smartdns https://github.com/pymumu/luci-app-smartdns' >>feeds.conf.default
#git clone https://github.com/vernesong/OpenClash.git package-temp
#mv -f package-temp/luci-app-openclash package/lean/
#rm -rf package-temp
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/lean/luci-app-adguardhome
