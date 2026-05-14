# 🌊 Lanautica App

**Lanautica App** adalah kumpulan alat web (web tools) sederhana yang dirancang untuk membantu pengelolaan data media sosial, administrasi konten, dan pelaporan statistik bulanan secara efisien. Aplikasi ini mengusung tema *Dark Mode* yang modern dan responsif.

---

## 🚀 Fitur Utama

Aplikasi ini terdiri dari beberapa modul utama yang dapat diakses melalui dashboard navigasi:

### 1. ⏱ Convert Time Format (`ConvertDate.html`)
Alat untuk mengubah format waktu dari gaya media sosial menjadi format standar yang siap digunakan untuk database atau arsip.
* **Input Contoh:** `12.03 AM - 1 Mei 2026` atau `1.05 PM · 14 Mar 2026`.
* **Output:** Format standar `Bulan/Tanggal/Tahun Jam:Menit:Detik` (misal: `5/1/2026 0:03:00`).
* **Fleksibilitas:** Mendukung pemisah titik (.), titik dua (:), tanda hubung (-), dan simbol dot (·).

### 2. 🖼 Unix Filename Generator (`ConvertPicture.html`)
Dirancang untuk membantu penamaan file gambar secara sistematis menggunakan Unix Timestamp.
* **Fungsi:** Mengonversi waktu tertentu menjadi Unix epoch dan menghasilkan 4 baris nama file `.jpg` secara otomatis.
* **Contoh Output:** `1741954500-001.jpg` hingga `1741954500-004.jpg`.

### 3. 📥 Input & Output Laporan (`InputLaporan.html` & `OutputLaporan.html`)
Sistem manajemen data statistik bulanan untuk melacak pertumbuhan media sosial.
* **Platform yang Didukung:** Showroom, IDN, X (Twitter), Threads, Instagram, TikTok, dan Private Message.
* **Pelacakan Pertumbuhan:** Secara otomatis membandingkan data bulan ini dengan data sebelumnya (`localStorage`) dan menampilkan indikator pertumbuhan seperti `(+10)` atau `(-5)`.
* **Visualisasi:** Data disajikan dalam bentuk kartu laporan yang rapi lengkap dengan ikon brand masing-masing platform.

---

## 🛠 Teknologi yang Digunakan

* **HTML5 & CSS3:** Struktur dan desain antarmuka dengan skema warna *Midnight Blue* dan *Sky Blue*.
* **Vanilla JavaScript:** Logika pemrosesan data, konversi waktu, dan kalkulasi statistik.
* **LocalStorage:** Digunakan untuk menyimpan data laporan secara lokal di browser tanpa memerlukan server/database eksternal.
* **Simple Icons & Flaticon:** Sumber ikon untuk visualisasi platform media sosial pada halaman output.

---

## 📂 Struktur Proyek

```text
LanauticaMonthly-main/
├── index.html            # Dashboard utama aplikasi
├── ConvertDate.html      # Alat konversi format tanggal/waktu
├── ConvertPicture.html   # Alat generator nama file berbasis Unix
├── InputLaporan.html     # Form input statistik media sosial
├── OutputLaporan.html    # Halaman tampilan laporan bulanan
├── testingvotecode.html  # Modul uji coba sistem voting sederhana
├── style.css             # Stylesheet global
└── a9848f.png            # Logo utama aplikasitext
LanauticaMonthly-main/
├── index.html            # Dashboard utama aplikasi
├── ConvertDate.html      # Alat konversi format tanggal/waktu
├── ConvertPicture.html   # Alat generator nama file berbasis Unix
├── InputLaporan.html     # Form input statistik media sosial
├── OutputLaporan.html    # Halaman tampilan laporan bulanan
├── testingvotecode.html  # Modul uji coba sistem voting sederhana
├── style.css             # Stylesheet global
└── a9848f.png            # Logo utama aplikasi
