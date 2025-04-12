#!/bin/bash

sudo apt update
sudo apt install -y samba


sudo mkdir -p /srv/samba/compartida
sudo chown nobody:nogroup /srv/samba/compartida
sudo chmod 0775 /srv/samba/compartida


sudo bash -c 'cat <<EOF >> /etc/samba/smb.conf

[Compartida]
   path = /srv/samba/compartida
   browseable = yes
   read only = no
   guest ok = yes
   force user = nobody
EOF'


sudo systemctl restart smbd


echo "Listo. Tu carpeta está compartida."
echo "Windows como: \\\\$(hostname -I | awk '{print $1}')\\Compartida"
