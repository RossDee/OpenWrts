#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.10.1
sed -i 's/192.168.1.1/111.11.1.1/g' package/base-files/files/bin/config_generate 

# Hello World
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git Openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default

# include NueXini_Packages
echo 'src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' >>feeds.conf.default

# luci-theme-infinityfreedom
echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default
#netmaker
echo 'src-git netmaker http://github.com/sbilly/netmaker-openwrt.git' >>feeds.conf.default

# 替换默认主题
rm -rf package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/thinktip/luci-theme-neobird.git package/lean/luci-theme-neobird
