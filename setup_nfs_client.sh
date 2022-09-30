#!/bin/bash
#
#

# ---- NFS client setup ----

apt install nfs-common -y;
mount -t nfs 192.168.94.31:/mnt/vault/nfs_share /mnt;
echo "192.168.94.31:/mnt/vault/nfs_share	/mnt	nfs	defaults	0	0" >> /etc/fstab;
