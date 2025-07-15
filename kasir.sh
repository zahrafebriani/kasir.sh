#!/bin/bash

# Daftar menu makanan dan minuman beserta harga
echo "Daftar Menu:"
echo "1. Baso - Rp 15000"
echo "2. Nasi Goreng - Rp 10000"
echo "3. Es Teh - Rp 5000"
echo "4. Es Jeruk - Rp 8000"
echo "5. kopi - Rp 20000"

# Meminta input jumlah item yang ingin dibeli
read -p "Jumlah item yang ingin dibeli: " jumlah_item

# Inisialisasi total harga
total_harga=0

# Loop untuk setiap item
for ((i=1; i<=jumlah_item; i++)); do
  read -p "Nomor menu ke-$i: " nomor_menu
  read -p "Jumlah porsi: " jumlah_porsi

  case $nomor_menu in
    1) harga=15000;;
    2) harga=10000;;
    3) harga=5000;;
    4) harga=8000;;
    5) harga=20000;;
    *) echo "Nomor menu tidak valid"; exit 1 ;;
   esac

   total_harga=$((total_harga + harga * jumlah_porsi))
  done

# Menampilkan total harga
echo "Total harga: Rp $total_harga"

# Meminta input uang yang dibayarkan
read -p "Uang yang dibayarkan: " uang_dibayarkan

# Menghitung kembalian
if ((uang_dibayarkan >= total_harga)); then
  kembalian=$((uang_dibayarkan - total_harga))
  echo "Kembalian: Rp $kembalian"
 else
  echo "Uang tidak cukup!"
fi

#ini hasil akhirnya setelah 5x gagal dan error,ini yang terakhir berhasil dan bisa di run dan bisa di ketik secara manual.Scrip ini/kode bash ini sangat mudah di gunakan oleh kasir sederhana misalnya buat warung atau pedagang kecilan.Scrip/kode bash ini juga digunakan untuk menghitung total belanja dan jumlah yang harus dibayarkan dan hitung kembalian dari uang yang dibayarkan oleh konsumen.Bagi saya ini lumayan gampang kalo udah berhasilnya tapi kalo error terus lumayan susah ngulik kodenya.
