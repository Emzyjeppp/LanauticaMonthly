# 🌊 Lanautica Monthly Suite

**Lanautica Monthly Suite** adalah portal utilitas pengembang dan pelaporan metrik bulanan yang didesain ulang secara modern dengan gaya *glassmorphism* futuristik. Suite ini mencakup alat konversi tanggal massal, generator nama file Unix berurutan, serta dasbor pelaporan statistik media sosial dan live streaming terintegrasi awan (**Supabase Cloud Database**).

---

## 🎨 Tampilan Premium & Estetika Visual
Aplikasi ini didesain menggunakan standard estetika modern:
- **Glassmorphism & Neon Glow**: Efek buram latar belakang (*backdrop-filter*) dikombinasikan dengan gradasi warna gelap (*Midnight Slate*) dan aksen neon (*soft blue*, *emerald green*, *amber*, dan *purple*).
- **Tipografi Modern**: Menggunakan Google Font **Outfit** untuk tulisan umum dan **JetBrains Mono** untuk representasi data kode dan waktu.
- **Micro-Animations**: Transisi hover yang dinamis pada setiap tombol dan kartu navigasi untuk meningkatkan pengalaman pengguna.
- **Branding Bersih**: Dilengkapi dengan logo transparan `logo.png` yang disesuaikan dengan tema gelap.

---

## 🚀 Fitur Utama

### 1. ⏱ Bulk Time Converter (`ConvertDate.html`)
Konversi format waktu multi-line/massal secara instan saat Anda mengetik.
- **Real-time Parsing**: Mengubah format tanggal media sosial seperti `1.05 PM · 14 Mar 2026` menjadi berbagai format tujuan (ISO, Unix, Euro, DB, atau Template Kustom).
- **Tabel Analisis Detil**: Menampilkan status konversi per baris (Sukses/Gagal) lengkap dengan diagnostik kesalahan.
- **Konfigurasi Timezone & Template**: Pilih offset GMT secara dinamis dan rancang template hasil konversi Anda sendiri (misal: `{YYYY}/{MM}/{DD} jam {hh}:{mm}`).

### 2. 🖼 Unix Filename Generator (`ConvertPicture.html`)
Generator nama file sistematis berbasis waktu Unix epoch untuk penamaan aset media berurutan.
- **Dua Metode Input**: Masukkan string tanggal secara manual atau gunakan picker kalender HTML5 yang intuitif.
- **Sequencing Canggih**: Atur jumlah file, indeks awal, padding angka nol (misal: `001`), prefix kustom, dan ekstensi file.
- **Auto Rename Scripts**: Menghasilkan script shell siap pakai untuk **PowerShell (Windows)** dan **Bash (Linux/Mac)** untuk merename file lokal Anda secara massal dalam satu klik.

### 3. 📥 Input Laporan Bulanan (`InputLaporan.html`)
Formulir pencatatan metrik bulanan yang mudah digunakan.
- **Autosave Draft**: Draf perubahan otomatis disimpan di penyimpanan lokal browser (*localStorage*) untuk mencegah hilangnya data akibat tab tertutup tidak sengaja.
- **Integrasi Cloud**: Mengirimkan data metrik langsung ke tabel database Supabase Cloud.
- **PIN Keamanan Admin**: Mewajibkan pengisian PIN Administrator sebelum menerbitkan data baru ke cloud database.

### 4. 📊 Output Laporan Bulanan (`OutputLaporan.html`)
Dasbor publik interaktif untuk menampilkan seluruh data performa bulanan secara langsung.
- **Kalkulasi Pertumbuhan MoM (Month-over-Month)**: Membandingkan metrik bulan berjalan dengan data bulan sebelumnya secara otomatis dari database dan menampilkan indikator naik (↑) atau turun (↓) secara dinamis.
- **Format Salin Chat**: Menghasilkan teks laporan berformat Markdown yang rapi untuk disalin langsung ke WhatsApp, Telegram, atau Discord.
- **Backup & Restore Cloud**: Fitur ekspor seluruh data database ke format berkas `.json` lokal, serta fitur pemulihan database cloud dengan mengimpor berkas backup tersebut (PIN-secured).

---

## 🛠 Teknologi & Arsitektur
Aplikasi ini berjalan sepenuhnya secara serverless (*client-side*):
- **Core**: HTML5, Vanilla JavaScript (ES6), dan Vanilla CSS3.
- **Database Awan**: PostgreSQL (Supabase Rest API).
- **Styling**: Sistem desain CSS kustom berbasis variabel HSL untuk konsistensi warna.

---

## 📂 Struktur Direktori Proyek

```text
lanautica-app/
├── index.html            # Hub Portal Utama
├── ConvertDate.html      # Alat Konversi Waktu Massal
├── ConvertPicture.html   # Generator Nama File Unix & Script Rename
├── InputLaporan.html     # Formulir Input Metrik Bulanan (Admin)
├── OutputLaporan.html    # Dasbor Metrik Publik (MoM Growth & Backups)
├── setup.sql             # Script Setup Tabel Supabase
├── logo.png              # Aset Logo Transparan Lanautica
└── README.md             # Dokumentasi Proyek
```

---

## ⚙️ Cara Setup Database Supabase (Gratis & Mudah)

Karena aplikasi ini murni statis, Anda tidak memerlukan server backend seperti Node.js atau PHP. Ikuti langkah berikut untuk mengaktifkan database awan Anda:

1. **Buat Proyek Supabase**:
   * Daftar atau masuk ke [Supabase](https://supabase.com).
   * Buat proyek baru dan tunggu hingga server siap.

2. **Jalankan Setup SQL**:
   * Di menu navigasi kiri dashboard Supabase, buka menu **SQL Editor**.
   * Klik **New Query**.
   * Buka berkas [setup.sql](setup.sql) di proyek Anda, salin semua kodenya, tempel di SQL editor Supabase, lalu klik tombol **Run**.
   * Ini akan membuat tabel `laporan` beserta index dan unique constraint yang dibutuhkan.

3. **Koneksikan Aplikasi**:
   * Buka aplikasi Lanautica di browser Anda (misalnya membuka `index.html`).
   * Buka halaman **Input Laporan** atau **Output Laporan**, klik tombol **⚙️ Setup Cloud** di pojok kanan atas.
   * Masukkan **Supabase Project URL** dan **Anon API Key** Anda (Dapat ditemukan di dashboard Supabase proyek Anda under *Settings -> API*).
   * Tentukan **Admin PIN** (default bawaan adalah `1234`) yang akan digunakan untuk menyimpan/memodifikasi data.
   * Klik **Simpan Konfigurasi**. Konfigurasi ini akan disimpan secara aman di penyimpanan browser lokal Anda.
   * *Tips Pengembang:* Anda juga dapat menulis langsung kredensial ini di dalam konstanta `SUPABASE_HARDCODED` di bagian script halaman `InputLaporan.html` dan `OutputLaporan.html` agar tidak perlu mengetiknya secara manual di browser.

---

## 🌐 Publikasi Online (Hosting Gratis)

Anda dapat menghosting proyek ini secara online secara gratis agar semua anggota tim atau publik dapat melihat data dasbor di halaman `OutputLaporan.html`.

### Menggunakan GitHub Pages:
1. Push proyek ini ke repositori GitHub Anda.
2. Masuk ke tab **Settings** di halaman repositori GitHub Anda.
3. Di navigasi samping, klik **Pages**.
4. Di bagian *Build and deployment*, pilih branch `main` (atau `master`) dan folder `/ (root)`, lalu klik **Save**.
5. Tunggu sekitar 1-2 menit, GitHub akan memberikan tautan publik aktif Anda (misal: `https://username.github.io/repository-name/index.html`).

---

## 📜 Lisensi & Atribusi
Dibuat dengan dedikasi dan keunggulan visual.
* **Developer/Author**: [emzyjeppp](https://github.com/Emzyjeppp)
* **Untuk**: Lanautica
