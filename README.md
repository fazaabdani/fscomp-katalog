# Katalog FS Comp - Versi 2

Perubahan versi ini:
- Kolom Facebook tidak dipakai.
- Tulisan/tombol "Katalog WA" tidak ditampilkan.
- Link katalog tetap dibaca dari spreadsheet.
- Tombol yang tampil ke pelanggan menjadi "Lihat Detail".
- Jika link katalog kosong, tombol menjadi "Minta Foto".

Spreadsheet:
https://docs.google.com/spreadsheets/d/1fAcFER0FqV8S94vJhglkY3Rg4EYU7c9_Sn5QEsvNPWc/edit?usp=sharing

Tab:
LIST STOK LAPTOP SECOND

CSV:
https://docs.google.com/spreadsheets/d/1fAcFER0FqV8S94vJhglkY3Rg4EYU7c9_Sn5QEsvNPWc/gviz/tq?tqx=out:csv&sheet=LIST%20STOK%20LAPTOP%20SECOND

Kolom yang dipakai:
- SERI
- PROCESSOR
- RAM
- STORAGE
- DISPLAY
- HARGA
- STOK
- STATUS
- FITUR TAMBAHAN
- LOKASI STOK
- MINUS
- LINK_KATALOG / LINK / URL / KATALOG WA / KATALOG

Nomor WA:
62816660056

Deploy:
Upload folder ini ke repo GitHub, lalu deploy sebagai Static Site di Coolify dengan domain:

https://katalog.fscomp.id


## Update V3

- Pembacaan kolom RAM dibuat lebih fleksibel.
- Bisa membaca header seperti RAM, MEMORY, MEMORI, RAM LAPTOP, atau header yang mengandung kata RAM.
- Jika RAM masih tampil `-`, berarti isi kolom RAM di spreadsheet kosong pada baris tersebut atau header kolom sangat berbeda.


## Update V4 - Foto Produk

Tambahkan kolom foto di spreadsheet. Nama kolom yang didukung:

- FOTO
- GAMBAR
- IMAGE
- PHOTO
- FOTO_URL
- LINK_FOTO
- URL_FOTO

Isi kolom dengan link gambar publik.

Rekomendasi aman:
1. Foto unit asli dari toko.
2. Upload ke Google Drive.
3. Klik kanan file/folder → Share → Anyone with the link → Viewer.
4. Masukkan link Google Drive ke kolom FOTO.

Catatan:
- Link Google Drive akan dikonversi otomatis agar bisa tampil sebagai gambar.
- Jika foto kosong, katalog tetap menampilkan kartu seperti biasa.
- Hindari mengambil gambar Google sembarangan untuk unit second karena bisa tidak sesuai kondisi asli dan berisiko hak cipta.


## Update V5

Perubahan:
- Merek dibaca dari kolom spreadsheet: MEREK, MERK, BRAND, atau VENDOR.
- Jika kolom merek kosong, sistem tetap mengambil merek dari kata pertama pada kolom SERI.
- Ditambahkan tombol/link ke https://fscomp.id.
- Foto bisa fallback dari link katalog hanya jika link tersebut adalah direct image, misalnya .jpg, .png, .webp, atau link Google Drive gambar.
- Link katalog WhatsApp/Facebook yang berupa halaman tidak bisa langsung dijadikan foto karena bukan URL gambar langsung.

Rekomendasi kolom spreadsheet:
SERI | MEREK | PROCESSOR | RAM | STORAGE | DISPLAY | HARGA | STOK | STATUS | LOKASI STOK | FOTO | LINK_KATALOG


## Update V6

Disesuaikan dengan header spreadsheet saat ini:
- LINK KATALOG WA dibaca sebagai link detail unit.
- LINK FOTO dibaca sebagai foto utama produk.
- MEREK tetap dibaca dari kolom MEREK.

Header yang cocok:
MEREK | SERI | PROCESSOR | RAM | STORAGE | DISPLAY | HARGA | STOK | STATUS | FITUR TAMBAHAN | LOKASI STOK | MINUS | LINK KATALOG WA | LINK FOTO


## Update V7 - Tema disamakan dengan landing page

Perubahan:
- Tema navy gelap + aksen cyan agar nyambung dengan fscomp.id.
- Header/topbar ditambahkan.
- Link ke https://fscomp.id ditaruh di:
  - logo/header kiri,
  - tombol "fscomp.id" bagian atas,
  - tombol "Landing Utama" di hero,
  - footer.
- Tambahan strip trust: QC ketat, garansi toko, servis profesional, stok update.
- Tambahan panel QC di bawah katalog.


## Update V8 - Google Drive Foto Lebih Stabil

Perubahan:
- Link Google Drive `file/d/.../view`, `open?id=...`, dan `uc?...id=...` sekarang dikonversi ke:
  `https://drive.google.com/thumbnail?id=FILE_ID&sz=w1200`
- Format thumbnail ini biasanya lebih stabil untuk ditampilkan di tag gambar website.
- Pastikan file Drive disetel: Anyone with the link → Viewer.
- Di spreadsheet, link harus ditempel sebagai teks URL asli, bukan hyperlink dengan teks pendek seperti "foto".


## Update V9 - Popup Foto

Perubahan:
- Foto produk pada kartu bisa diklik untuk membuka popup foto besar.
- Tombol kedua otomatis:
  - `Lihat Detail` jika ada LINK KATALOG WA / link detail.
  - `Lihat Foto` jika tidak ada link detail tapi ada LINK FOTO.
  - `Minta Foto` jika foto dan link detail kosong.
- Jika foto ada, judul pada area gambar disembunyikan agar foto tidak tertutup tulisan.


## Update V10 - Fix Loading Stuck

Perbaikan:
- Modal popup foto dipindahkan sebelum script agar JavaScript tidak error.
- Event listener popup dibuat aman.
- Mengatasi masalah halaman berhenti di "Memuat data katalog...".
