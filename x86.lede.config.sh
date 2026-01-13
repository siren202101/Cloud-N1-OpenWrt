#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y
# CONFIG_COREMARK_ENABLE_MULTITHREADING is not set
CONFIG_GRUB_IMAGES=y
CONFIG_NODEJS_ICU_SMALL=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_boost=y
CONFIG_PACKAGE_boost-program_options=y
CONFIG_PACKAGE_boost-system=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_chinadns-ng=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_ddns-scripts-cloudflare=y
# CONFIG_PACKAGE_dnsmasq_full_auth is not set
# CONFIG_PACKAGE_dnsmasq_full_conntrack is not set
# CONFIG_PACKAGE_dnsmasq_full_nftset is not set
CONFIG_PACKAGE_geoview=y
CONFIG_PACKAGE_ipt2socks=y
CONFIG_PACKAGE_iptables-mod-ipopt=y
CONFIG_PACKAGE_iptables-mod-iprange=y
CONFIG_PACKAGE_iptables-mod-socket=y
# CONFIG_PACKAGE_jansson is not set
CONFIG_PACKAGE_kmod-br-netfilter=y
CONFIG_PACKAGE_kmod-crypto-acompress=y
CONFIG_PACKAGE_kmod-fs-btrfs=y
CONFIG_PACKAGE_kmod-ifb=y
CONFIG_PACKAGE_kmod-inet-diag=y
CONFIG_PACKAGE_kmod-ipt-ipopt=y
CONFIG_PACKAGE_kmod-ipt-iprange=y
CONFIG_PACKAGE_kmod-ipt-socket=y
CONFIG_PACKAGE_kmod-lib-lzo=y
CONFIG_PACKAGE_kmod-lib-raid6=y
CONFIG_PACKAGE_kmod-lib-xor=y
CONFIG_PACKAGE_kmod-lib-zlib-deflate=y
CONFIG_PACKAGE_kmod-lib-zstd=y
CONFIG_PACKAGE_kmod-netlink-diag=y
CONFIG_PACKAGE_kmod-nf-socket=y
# CONFIG_PACKAGE_kmod-nft-core is not set
# CONFIG_PACKAGE_kmod-nft-fullcone is not set
# CONFIG_PACKAGE_kmod-nft-nat is not set
CONFIG_PACKAGE_kmod-sched-cake=y
CONFIG_PACKAGE_kmod-sched-core=y
CONFIG_PACKAGE_libatomic=y
CONFIG_PACKAGE_libattr=y
CONFIG_PACKAGE_libbz2=y
CONFIG_PACKAGE_libffi=y
CONFIG_PACKAGE_libgdbm=y
CONFIG_PACKAGE_libgmp=y
CONFIG_PACKAGE_libltdl=y
CONFIG_PACKAGE_liblzma=y
CONFIG_PACKAGE_liblzo=y
# CONFIG_PACKAGE_libnetfilter-conntrack is not set
# CONFIG_PACKAGE_libnfnetlink is not set
# CONFIG_PACKAGE_libnftnl is not set
CONFIG_PACKAGE_libopenssl-legacy=y
CONFIG_PACKAGE_libparted=y
CONFIG_PACKAGE_libpython3=y
CONFIG_PACKAGE_libruby=y
CONFIG_PACKAGE_libsqlite3=y
CONFIG_PACKAGE_libstdcpp=y
CONFIG_PACKAGE_libuv=y
CONFIG_PACKAGE_libyaml=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_libudev-zero=y
CONFIG_DEFAULT_firewall=n
CONFIG_DEFAULT_firewall4=y
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-app-docker=y
CONFIG_PACKAGE_luci-app-dockerman=y
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Geoview=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_SingBox=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin=y
CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-passwall_Iptables_Transparent_Proxy=y
CONFIG_PACKAGE_luci-app-ramfree=y
CONFIG_PACKAGE_luci-app-smartdns=y
CONFIG_PACKAGE_luci-app-socat=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=y
# CONFIG_PACKAGE_luci-app-upnp is not set
CONFIG_PACKAGE_luci-i18n-argon-config-zh-cn=y
CONFIG_PACKAGE_luci-i18n-diskman-zh-cn=y
CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ramfree-zh-cn=y
CONFIG_PACKAGE_luci-i18n-smartdns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-socat-zh-cn=y
CONFIG_PACKAGE_luci-i18n-sqm-zh-cn=y
CONFIG_PACKAGE_luci-theme-argon=y
# CONFIG_PACKAGE_miniupnpd is not set
# CONFIG_PACKAGE_nftables-json is not set
CONFIG_PACKAGE_node=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_python-pip-conf=y
CONFIG_PACKAGE_python3=y
CONFIG_PACKAGE_python3-asyncio=y
CONFIG_PACKAGE_python3-base=y
CONFIG_PACKAGE_python3-cgi=y
CONFIG_PACKAGE_python3-cgitb=y
CONFIG_PACKAGE_python3-codecs=y
CONFIG_PACKAGE_python3-ctypes=y
CONFIG_PACKAGE_python3-dbm=y
CONFIG_PACKAGE_python3-decimal=y
CONFIG_PACKAGE_python3-distutils=y
CONFIG_PACKAGE_python3-email=y
CONFIG_PACKAGE_python3-light=y
CONFIG_PACKAGE_python3-logging=y
CONFIG_PACKAGE_python3-lzma=y
CONFIG_PACKAGE_python3-multiprocessing=y
CONFIG_PACKAGE_python3-ncurses=y
CONFIG_PACKAGE_python3-openssl=y
CONFIG_PACKAGE_python3-pip=y
CONFIG_PACKAGE_python3-pkg-resources=y
CONFIG_PACKAGE_python3-py=y
CONFIG_PACKAGE_python3-pydoc=y
CONFIG_PACKAGE_python3-readline=y
CONFIG_PACKAGE_python3-setuptools=y
CONFIG_PACKAGE_python3-sqlite3=y
CONFIG_PACKAGE_python3-unittest=y
CONFIG_PACKAGE_python3-urllib=y
CONFIG_PACKAGE_python3-uuid=y
CONFIG_PACKAGE_python3-xml=y
CONFIG_PACKAGE_ruby=y
CONFIG_PACKAGE_ruby-bigdecimal=y
CONFIG_PACKAGE_ruby-date=y
CONFIG_PACKAGE_ruby-digest=y
CONFIG_PACKAGE_ruby-enc=y
CONFIG_PACKAGE_ruby-pstore=y
CONFIG_PACKAGE_ruby-psych=y
CONFIG_PACKAGE_ruby-stringio=y
CONFIG_PACKAGE_ruby-yaml=y
CONFIG_PACKAGE_shadowsocks-libev-ss-local=y
CONFIG_PACKAGE_shadowsocks-libev-ss-redir=y
CONFIG_PACKAGE_sing-box=y
CONFIG_PACKAGE_smartdns=y
CONFIG_PACKAGE_smartmontools=y
CONFIG_PACKAGE_socat=y
CONFIG_PACKAGE_sqm-scripts=y
CONFIG_PACKAGE_tc-tiny=y
CONFIG_PACKAGE_trojan-plus=y
CONFIG_PACKAGE_unzip=y
CONFIG_PACKAGE_v2ray-plugin=y
CONFIG_PARTED_READLINE=y
CONFIG_RUBY_ENABLE_YJIT=y
CONFIG_SING_BOX_BUILD_ACME=y
CONFIG_SING_BOX_BUILD_CLASH_API=y
CONFIG_SING_BOX_BUILD_GVISOR=y
CONFIG_SING_BOX_BUILD_QUIC=y
CONFIG_SING_BOX_BUILD_TAILSCALE=y
CONFIG_SING_BOX_BUILD_UTLS=y
CONFIG_SING_BOX_BUILD_WIREGUARD=y
CONFIG_SQLITE3_COLUMN_METADATA=y
CONFIG_SQLITE3_DYNAMIC_EXTENSIONS=y
CONFIG_SQLITE3_FTS3=y
CONFIG_SQLITE3_FTS4=y
CONFIG_SQLITE3_FTS5=y
CONFIG_SQLITE3_JSON1=y
CONFIG_SQLITE3_RTREE=y
CONFIG_TARGET_KERNEL_PARTSIZE=256
CONFIG_TARGET_ROOTFS_PARTSIZE=764
CONFIG_boost-compile-visibility-hidden=y
CONFIG_boost-runtime-shared=y
CONFIG_boost-static-and-shared-libs=y
CONFIG_boost-variant-release=y
# CONFIG_PACKAGE_haproxy is not set
# CONFIG_PACKAGE_liblua5.3 is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client is not set
# AdGuard Home 插件本体
#CONFIG_PACKAGE_luci-app-adguardhome=y

# 语言包（确保界面是中文）
#CONFIG_PACKAGE_luci-i18n-adguardhome-zh-cn=y

# 核心依赖（处理 HTTPS 过滤和下载核心所必需）
#CONFIG_PACKAGE_ca-bundle=y
#CONFIG_PACKAGE_ca-certificates=y
#CONFIG_PACKAGE_wget-ssl=y
#应用过滤
CONFIG_PACKAGE_luci-app-oaf=y
CONFIG_PACKAGE_kmod-oaf=y
EOF
