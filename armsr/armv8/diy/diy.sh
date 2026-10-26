#!/bin/bash

# Add luci-app-nikki
git clone --depth=1 https://github.com/nikkinikki-org/OpenWrt-nikki package/luci-app-nikki

# Add luci-app-amlogic
git clone -b main https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

# Adjust packages
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile
sed -i 's/GO_ARM64:=v8\.0$/GO_ARM64:=v8.0,crypto/' feeds/packages/lang/golang/golang-values.mk

# Clean packages
rm -rf clone
