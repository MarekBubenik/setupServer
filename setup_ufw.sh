#!/bin/bash
#
#

apt install ufw -y;
systemctl start ufw;
systemctl enable ufw;
ufw default allow outgoing;
ufw default deny incoming;
ufw allow ssh;
ufw allow http;
ufw allow https;
#ufw allow Samba;
ufw allow NFS;
ufw logging on;
ufw enable;
