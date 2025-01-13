# WiFi Show Key - WISKEY

**WISKEY** (WiFi Show Key) adalah sebuah tools berbasis batch script yang memungkinkan pengguna untuk menampilkan password Wi-Fi yang tersimpan di perangkat Windows. Selain itu, tools ini juga dilengkapi dengan fitur untuk menambahkan folder script ke dalam `PATH` environment variable secara otomatis jika belum ada, menjadikannya lebih mudah digunakan di berbagai sesi terminal.

## Fitur Utama
- **Menampilkan Password Wi-Fi**  
  Menampilkan password untuk jaringan Wi-Fi yang tersimpan di perangkat Windows dengan mudah.
  
- **Pengecekan dan Penambahan Folder ke PATH**  
  Secara otomatis menambahkan folder tempat script dijalankan ke dalam `PATH` environment variable jika belum ada. Hal ini memungkinkan script untuk dijalankan dari direktori mana pun tanpa perlu merujuk ke path lengkap.

- **Penggunaan Tanpa Administrator (Opsional)**  
  Jika dijalankan tanpa hak administrator, script akan otomatis meminta hak administrator untuk mengubah `PATH` dan melanjutkan eksekusi.

- **Antarmuka Pengguna Sederhana**  
  Script ini dirancang dengan antarmuka yang mudah digunakan, menampilkan daftar Wi-Fi yang tersedia dan memungkinkan pengguna untuk memilih Wi-Fi yang ingin ditampilkan password-nya.

- **Pemeriksaan Koneksi Wi-Fi**  
  Secara otomatis memeriksa apakah koneksi Wi-Fi ada, serta menampilkan pesan yang sesuai jika tidak ada Wi-Fi yang ditemukan.

## Cara Penggunaan
1. **Jalankan Script**:  
   Cukup jalankan script batch (`.cmd`) dengan hak administrator.

2. **Pilih Wi-Fi**:  
   Setelah menjalankan script, pilih nomor jaringan Wi-Fi yang ingin ditampilkan password-nya.

3. **Lihat Password**:  
   Password Wi-Fi yang dipilih akan ditampilkan di layar.

4. **Folder Otomatis Ditambahkan ke PATH**:  
   Script akan memeriksa apakah foldernya sudah ada di `PATH`. Jika belum, folder tersebut akan ditambahkan secara otomatis.
   Jadi setelah folder ditambahkan ke path penggunaan akan lebih simpel dengan mengetik "wsk" di cmd


## Cara Menjalankan
1. Download atau clone repository ini.
2. Jalankan script dengan klik kanan pada file `WISKEY.cmd` dan pilih "Run as administrator" untuk memberikan hak akses penuh.
3. Ikuti petunjuk di terminal untuk memilih Wi-Fi yang ingin ditampilkan password-nya.

## License
[MIT License](LICENSE)
