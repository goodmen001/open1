#!/bin/bash
#===============================================
# Description: DIY script
# File name: diy-script.sh
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#===============================================

# 修改默认IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate

# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# TTYD 自动登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 移除要替换的包
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-netgear
rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/luci/themes/luci-theme-neobird

# 添加额外插件
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
git clone --depth=1 https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone --depth=1 https://github.com/iwrt/luci-app-ikoolproxy package/luci-app-ikoolproxy
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
git clone --depth=1 https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone --depth=1 https://github.com/Jason6111/luci-app-netdata package/luci-app-netdata
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-filebrowser package/luci-app-filebrowser
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-ssr-mudb-server package/luci-app-ssr-mudb-server
svn export https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
svn export https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-eqos package/luci-app-eqos
svn export https://github.com/syb999/openwrt-19.07.1/trunk/package/network/services/msd_lite package/msd_lite
svn export https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-pgyvpn package/luci-app-pgyvpn
svn export https://github.com/kiddin9/openwrt-packages/tree/master/pgyvpn package/pgyvpn
svn export https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-phtunnel package/luci-app-phtunnel
svn export https://github.com/kiddin9/openwrt-packages/tree/master/phtunnel package/phtunnel
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone https://github.com/natelol/luci-app-beardropper package/luci-app-beardropper
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
git clone https://github.com/sirpdboy/luci-app-parentcontrol  package/luci-app-parentcontrol
git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-control-speedlimit package/luci-app-control-speedlimit
git clone https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-control-webrestriction package/luci-app-control-webrestriction
git clone https://github.com/gdck/luci-app-control-weburl package/luci-app-control-weburl
svn export https://github.com/kiddin9/openwrt-packages/tree/master/cloudreve package/cloudreve
svn export https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-cloudreve package/luci-app-cloudreve
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
git clone https://github.com/sirpdboy/luci-app-advanced package/luci-app-advanced
git clone https://github.com/sirpdboy/luci-app-netwizard package/luci-app-netwizard
git clone https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus
git clone https://github.com/immortalwrt-collections/openwrt-cdnspeedtest.git package/cdnspeedtest
svn export https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-cloudflarespeedtest package/luci-app-cloudflarespeedtest
# git clone https://github.com/sbwml/luci-app-dae package/dae
# git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# 科学上网插件
git clone --depth=1 https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/luci-app-passwall2
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn export https://github.com/haiibo/packages/trunk/luci-app-bypass package/luci-app-bypass

# Themes
git clone --depth=1 -b 18.06 https://github.com/kiddin9/luci-theme-edge package/luci-theme-edge
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
svn export https://github.com/haiibo/packages/trunk/luci-theme-atmaterial package/luci-theme-atmaterial
svn export https://github.com/haiibo/packages/trunk/luci-theme-opentomcat package/luci-theme-opentomcat
svn export https://github.com/haiibo/packages/trunk/luci-theme-netgear package/luci-theme-netgear
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
git clone https://github.com/thinktip/luci-theme-neobird.git package/Luci-theme-neobird

# 更改 Argon 主题背景
cp -f $GITHUB_WORKSPACE/images/bg1.jpg package/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg

# 晶晨宝盒
svn export https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
sed -i "s|firmware_repo.*|firmware_repo 'https://github.com/haiibo/OpenWrt'|g" package/luci-app-amlogic/root/etc/config/amlogic
# sed -i "s|kernel_path.*|kernel_path 'https://github.com/ophub/kernel'|g" package/luci-app-amlogic/root/etc/config/amlogic
sed -i "s|ARMv8|ARMv8_PLUS|g" package/luci-app-amlogic/root/etc/config/amlogic

# 更新 docker 版本
# sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=24.0.5/g' feeds/packages/utils/docker/Makefile
# sed -i 's/PKG_HASH:=.*/PKG_HASH:=fa32b5f3c2f85fba9ef6e1b5099a4b608fa20af45ba71b3da2194e8728037eec/g' feeds/packages/utils/docker/Makefile
# sed -i 's/PKG_GIT_SHORT_COMMIT:=.*/PKG_GIT_SHORT_COMMIT:=ced0996/g' feeds/packages/utils/docker/Makefile

# 更新 dockerd 版本
# sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=24.0.5/g' feeds/packages/utils/dockerd/Makefile
# sed -i 's/PKG_HASH:=.*/PKG_HASH:=837d7d667fb64508bf6e53cb5915b4b5ef356599294ffdd5ca8678168230cb38/g' feeds/packages/utils/dockerd/Makefile
# sed -i 's/PKG_GIT_SHORT_COMMIT:=.*/PKG_GIT_SHORT_COMMIT:=a61e2b4/g' feeds/packages/utils/dockerd/Makefile

# SmartDNS
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns package/smartdns

# MosDNS
svn export https://github.com/sbwml/luci-app-mosdns/trunk/luci-app-mosdns package/luci-app-mosdns
svn export https://github.com/sbwml/luci-app-mosdns/trunk/mosdns package/mosdns

# DDNS.to
svn export https://github.com/linkease/nas-packages-luci/trunk/luci/luci-app-ddnsto package/luci-app-ddnsto
svn export https://github.com/linkease/nas-packages/trunk/network/services/ddnsto package/ddnsto

# Alist
svn export https://github.com/sbwml/luci-app-alist/trunk/luci-app-alist package/luci-app-alist
svn export https://github.com/sbwml/luci-app-alist/trunk/alist package/alist

# iStore
svn export https://github.com/linkease/istore-ui/trunk/app-store-ui package/app-store-ui
svn export https://github.com/linkease/istore/trunk/luci package/luci-app-store

# 在线用户
svn export https://github.com/haiibo/packages/trunk/luci-app-onliner package/luci-app-onliner
sed -i '$i uci set nlbwmon.@nlbwmon[0].refresh_interval=2s' package/lean/default-settings/files/zzz-default-settings
sed -i '$i uci commit nlbwmon' package/lean/default-settings/files/zzz-default-settings
chmod 755 package/luci-app-onliner/root/usr/share/onliner/setnlbw.sh

# x86 型号只显示 CPU 型号
sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/autocore

# 修改本地时间格式
sed -i 's/os.date()/os.date("%a %Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 修改版本为编译日期
date_version=$(date +"%y.%m.%d")
orig_version=$(cat "package/lean/default-settings/files/zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
sed -i "s/${orig_version}/R${date_version} by zyong/g" package/lean/default-settings/files/zzz-default-settings

# 修复 hostapd 报错
cp -f $GITHUB_WORKSPACE/scripts/011-fix-mbo-modules-build.patch package/network/services/hostapd/patches/011-fix-mbo-modules-build.patch

# 修改 Makefile
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/lang\/golang\/golang-package.mk/$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang-package.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHREPO/PKG_SOURCE_URL:=https:\/\/github.com/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload.github.com/g' {}

# 取消主题默认设置
find package/luci-theme-*/* -type f -name '*luci-theme-*' -print -exec sed -i '/set luci.main.mediaurlbase/d' {} \;

# 调整 V2ray服务器 到 VPN 菜单
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm

./scripts/feeds update -a
./scripts/feeds install -a
