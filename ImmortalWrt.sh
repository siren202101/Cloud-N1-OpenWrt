#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_armsr=y
CONFIG_TARGET_armsr_armv8=y
CONFIG_TARGET_armsr_armv8_DEVICE_generic=y
CONFIG_TARGET_ROOTFS_INITRAMFS=n
CONFIG_TARGET_ROOTFS_CPIOGZ=n
CONFIG_TARGET_ROOTFS_EXT4FS=n
CONFIG_TARGET_ROOTFS_SQUASHFS=n

# ipv6
CONFIG_PACKAGE_ipv6helper=y

# kmod
CONFIG_PACKAGE_kmod-amazon-ena=n
CONFIG_PACKAGE_kmod-ata-ahci=y
CONFIG_PACKAGE_kmod-atlantic=n
CONFIG_PACKAGE_kmod-bcmgenet=n
CONFIG_PACKAGE_kmod-dwmac-imx=n
CONFIG_PACKAGE_kmod-dwmac-rockchip=n
CONFIG_PACKAGE_kmod-dwmac-sun8i=n
CONFIG_PACKAGE_kmod-e1000e=n
CONFIG_PACKAGE_kmod-fsl-dpaa1-net=n
CONFIG_PACKAGE_kmod-fsl-dpaa2-net=n
CONFIG_PACKAGE_kmod-fsl-enetc-net=n
CONFIG_PACKAGE_kmod-fsl-fec=n
CONFIG_PACKAGE_kmod-gpio-pca953x=n
CONFIG_PACKAGE_kmod-i2c-mux-pca954x=n
CONFIG_PACKAGE_kmod-mvneta=n
CONFIG_PACKAGE_kmod-mvpp2=n
CONFIG_PACKAGE_kmod-octeontx2-net=n
CONFIG_PACKAGE_kmod-phy-aquantia=n
CONFIG_PACKAGE_kmod-phy-broadcom=n
CONFIG_PACKAGE_kmod-phy-marvell=n
CONFIG_PACKAGE_kmod-phy-marvell-10g=n
CONFIG_PACKAGE_kmod-rtc-rx8025=n
CONFIG_PACKAGE_kmod-sfp=n
CONFIG_PACKAGE_kmod-thunderx-net=n
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-vmxnet3=n
CONFIG_PACKAGE_kmod-wdt-sp805=n

# luci
								   
CONFIG_PACKAGE_luci-app-filetransfer=n
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_luci-app-smartdns=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-app-dockerman=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
#CONFIG_PACKAGE_luci-app-wechatpush=y
CONFIG_PACKAGE_luci-app-socat=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_vlmcsd=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=y
CONFIG_PACKAGE_luci-app-amlogic=y
CONFIG_PACKAGE_luci-i18n-amlogic-zh-cn=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_ddns-scripts-cloudflare=y
CONFIG_DEFAULT_default-settings=y
CONFIG_PACKAGE_default-settings=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_DEFAULT_ppp=y
CONFIG_DEFAULT_ppp-mod-pppoe=y
CONFIG_PACKAGE_kmod-ppp=y
CONFIG_PACKAGE_kmod-mppe=y
CONFIG_PACKAGE_kmod-pppoe=y
CONFIG_PACKAGE_kmod-pppox=y
CONFIG_PACKAGE_luci-proto-ppp=y
CONFIG_PACKAGE_ppp=y
CONFIG_PACKAGE_ppp-mod-pppoe=y



CONFIG_PACKAGE_luci-i18n-zh-cn=y
CONFIG_PACKAGE_luci-i18n-filetransfer-zh-cn=y
CONFIG_PACKAGE_luci-i18n-argon-config-zh-cn=y
CONFIG_PACKAGE_luci-i18n-diskman-zh-cn=y
CONFIG_PACKAGE_luci-i18n-openclash-zh-cn=y
CONFIG_PACKAGE_luci-i18n-smartdns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-wol-zh-cn=y
CONFIG_PACKAGE_luci-i18n-samba4-zh-cn=y
CONFIG_PACKAGE_luci-i18n-dockerman-zh-cn=y
CONFIG_PACKAGE_luci-i18n-nlbwmon-zh-cn=y
CONFIG_PACKAGE_luci-i18n-socat-zh-cn=y
CONFIG_PACKAGE_luci-i18n-sqm-zh-cn=y
CONFIG_PACKAGE_luci-i18n-unblockneteasemusic-zh-cn=y
CONFIG_PACKAGE_luci-i18n-amlogic-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-vsftpd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-autoreboot-zh-cn=y


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
CONFIG_PACKAGE_python3-pydoc=y
CONFIG_PACKAGE_python3-readline=y
CONFIG_PACKAGE_python3-setuptools=y
CONFIG_PACKAGE_python3-sqlite3=y
CONFIG_PACKAGE_python3-unittest=y
CONFIG_PACKAGE_python3-urllib=y
CONFIG_PACKAGE_python3-uuid=y
CONFIG_PACKAGE_python3-xml=y
CONFIG_PACKAGE_uhttpd=y




# themes
CONFIG_PACKAGE_luci-theme-argon=y

# other packages
CONFIG_PACKAGE_autocore=y
CONFIG_PACKAGE_fstrim=y
CONFIG_PACKAGE_ppp=n
CONFIG_PACKAGE_zoneinfo-asia=y

# necessary
CONFIG_BTRFS_PROGS_ZSTD=y
CONFIG_PACKAGE_attr=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_bsdtar=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_chattr=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
CONFIG_PACKAGE_lsattr=y
CONFIG_PACKAGE_perl=y
CONFIG_PACKAGE_perlbase-getopt=y
CONFIG_PACKAGE_perlbase-unicode=y
CONFIG_PACKAGE_perl-http-date=y
CONFIG_PACKAGE_pigz=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_xfs-fsck=y
CONFIG_PACKAGE_xfs-mkfs=y

# remove wifi
CONFIG_PACKAGE_hostapd-common=n
CONFIG_PACKAGE_iw=n
CONFIG_PACKAGE_kmod-brcmfmac=n
CONFIG_PACKAGE_kmod-brcmutil=n
CONFIG_PACKAGE_kmod-cfg80211=n
CONFIG_PACKAGE_kmod-mac80211=n
CONFIG_PACKAGE_wpa-cli=n
CONFIG_PACKAGE_wpad-basic=n
###添加依赖包###
CONFIG_PACKAGE_perl-http-date=y
CONFIG_PACKAGE_perlbase-file=y
CONFIG_PACKAGE_perlbase-getopt=y
CONFIG_PACKAGE_perlbase-time=y
CONFIG_PACKAGE_perlbase-unicode=y
CONFIG_PACKAGE_perlbase-utf8=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_attr=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_chattr=y
CONFIG_PACKAGE_dosfstools=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_f2fsck=y
CONFIG_PACKAGE_lsattr=y
CONFIG_PACKAGE_mkf2fs=y
CONFIG_PACKAGE_xfs-fsck=y
CONFIG_PACKAGE_xfs-mkfs=y
CONFIG_PACKAGE_bsdtar=y
CONFIG_PACKAGE_pigz=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
CONFIG_PACKAGE_losetup=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_uuidgen=y
CONFIG_PACKAGE_acpid=y
EOF
