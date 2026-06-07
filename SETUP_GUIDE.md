# 📦 Safe Drop System - Setup Guide

Sila ikuti langkah-langkah di bawah untuk menjalankan sistem di komputer anda.

## 🛠️ Prasyarat
1. Pastikan anda telah memasang **XAMPP** (Versi PHP 8.x digalakkan).
2. Pastikan **Apache** dan **MySQL** telah diaktifkan di XAMPP Control Panel.

---

## 🚀 Langkah Pemasangan

### 1. Salin Folder Projek
Copy folder `safe_drop_system` ini dan letakkan ke dalam direktori:
`C:\xampp\htdocs\`

### 2. Persediaan Database (MySQL)
1. Buka pelayar web dan layari `http://localhost/phpmyadmin/`.
2. Cipta database baru dengan nama: **`safe_drop`**.
3. Klik pada database `safe_drop`, pergi ke tab **Import**.
4. Pilih fail **`safe_drop.sql`** yang berada di dalam folder projek ini.
5. Tekan butang **Import** dan tunggu sehingga selesai.

### 3. Konfigurasi Database (Jika Perlu)
Sekiranya anda menggunakan password MySQL yang berbeza, sila kemaskini fail:
`database/to_connect.php`

### 4. Konfigurasi Email Tracking (Penting untuk komputer client)
Sistem tracking email menggunakan SMTP. Untuk elakkan isu "Could not connect to SMTP host", buat fail ini:
`database/mail_config.local.php`

Anda boleh salin contoh dari:
`database/mail_config.local.example.php`

Kemudian isi maklumat SMTP server client:
- `host`
- `port`
- `encryption` (`tls` / `ssl`)
- `username`
- `password`
- `from_email`
- `from_name`

Nota penting:
- Mesin client mesti boleh akses SMTP server pada port yang dipilih (`587`, `465`, atau ikut provider).
- Jika ada firewall, antivirus, atau hosting restriction, port SMTP mungkin diblock.
- Jika SMTP guna provider berbeza, jangan hardcode dalam `send_tracking_link.php`; update melalui `mail_config.local.php`.

### 5. Jalankan Sistem
Layari pautan berikut di pelayar web anda:
[http://localhost/safe_drop_system/interface/login.php](http://localhost/safe_drop_system/interface/login.php)

---

## 🛡️ Maklumat Login Default
- **Username:** `admin`
- **Password:** `root123`

---
*Projek ini telah dioptimumkan dengan ciri-ciri keselamatan XSS, CSRF, dan Brute Force Protection.*
