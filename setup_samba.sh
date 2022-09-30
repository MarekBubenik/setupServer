#!/bin/bash
#
#

# ---- Samba setup ----

apt install samba smbclient cifs-utils -y;
systemctl enable --now smbd.service;
systemctl enable --now nmbd.service;

mv smb.conf /etc/samba/;

systemctl restart smbd.service;
systemctl restart nmbd.service;

# Create and enable a user for samba share

adduser -M sambamb -s /sbin/nologin;

smbpasswd -a sambamb;
smbpasswd -e sambamb;

# Edit folder permissions/ownership

# chmod 2770 /mnt/vault/samba_share;
# chown -R root:sambamb /mnt/vault/samba_share;

# Test your configuration

testparm;

systemctl restart smbd.service;
systemctl restart nmbd.service;

