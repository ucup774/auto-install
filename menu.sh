#!/bin/bash
clear
echo "--- VPS MANAGER MENU ---"
echo "1. Buat Akun SSH/WS"
echo "2. Hapus Akun"
echo "3. Cek Login User"
echo "4. Keluar"
read -p "Pilih menu [1-4]: " menu

case $menu in
1)
    read -p "Username: " user
    read -p "Password: " pass
    read -p "Masa Aktif (hari): " aktif
    useradd -e `date -d "$aktif days" +"%Y-%m-%d"` -s /bin/false $user
    echo -e "$pass\n$pass" | passwd $user
    echo "Akun $user berhasil dibuat!"
    ;;
2)
    read -p "Username yang dihapus: " user
    userdel $user
    echo "User $user dihapus."
    ;;
*)
    exit
    ;;
esac

