#!/bin/bash
# Script utama untuk install komponen
apt update && apt upgrade -y
apt install python3 dropbear -y

# Download script menu dari github kamu sendiri
wget -O /usr/bin/menu "https://raw.githubusercontent.com/USERNAME_KAMU/my-vps-script/main/menu.sh"
chmod +x /usr/bin/menu

echo "Instalasi selesai. Ketik 'menu' untuk mengelola user."
