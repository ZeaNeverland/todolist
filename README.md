# 📝 Aplikasi ToDo List Flutter

## 📌 Judul Aplikasi
**ToDo List App – Manajemen Tugas Pribadi Berbasis Flutter dan Supabase**

## 🧾 Deskripsi Aplikasi
Aplikasi ini merupakan aplikasi ToDo List modern yang digunakan untuk mencatat, memantau, dan mengatur daftar tugas. Aplikasi dilengkapi dengan fitur autentikasi pengguna, pengingat tenggat waktu, tampilan mode gelap, serta sistem CRUD (Create, Read, Update, Delete) untuk tugas-tugas pengguna.

### 🔎 Bagian-bagian dari Aplikasi:
1. **Halaman Login** – Untuk masuk menggunakan email & password.
2. **Halaman Register** – Untuk mendaftar akun baru.
3. **Halaman Home Page** – Menampilkan daftar tugas pengguna.
4. **Halaman Tambah/Edit Tugas** – Untuk menambah dan memperbarui tugas.

## 🧱 Database yang Digunakan
**Supabase** – Platform backend yang berbasis PostgreSQL.

### Tabel `profiles`
| Kolom    | Tipe | Keterangan            |
| -------- | ---- | --------------------- |
| id       | UUID | Primary Key (User ID) |
| username | Text | Nama pengguna         |

### Tabel `todos`
| Kolom     | Tipe      | Keterangan                    |
| --------- | --------- | ----------------------------- |
| id        | UUID      | Primary Key                   |
| user_id   | UUID      | Foreign key ke `profiles.id`  |
| title     | Text      | Judul tugas                   |
| deadline  | Timestamp | Tenggat waktu (opsional)      |
| is_done   | Boolean   | Status selesai atau belum     |

## 🌐 API yang Digunakan
- **Supabase Auth API** untuk login/register.
- **Supabase REST API** untuk pengelolaan data `todos` dan `profiles`.

## 💻 Software yang Digunakan
- [Flutter](https://flutter.dev) – SDK untuk membangun aplikasi mobile.
- [Dart](https://dart.dev) – Bahasa pemrograman yang digunakan oleh Flutter.
- [Supabase](https://supabase.com) – Backend untuk autentikasi dan database.
- [Visual Studio Code](https://code.visualstudio.com) – Code editor.
- [Android Studio / Emulator] – Untuk testing aplikasi Android.

## ⚙️ Cara Instalasi

### 1. Clone proyek ini
```bash
git clone https://github.com/username/flutter-todolist.git
cd flutter-todolist
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Setup Supabase
- Buka [https://supabase.com](https://supabase.com)
- Buat proyek baru dan salin `SUPABASE_URL` serta `ANON_KEY`
- Buat tabel seperti yang sudah dijelaskan di atas (profiles & todos)

### 4. Konfigurasi Supabase di `main.dart`
```dart
await Supabase.initialize(
  url: 'https://your-project.supabase.co',
  anonKey: 'your-anon-key',
);
```

## ▶️ Cara Menjalankan Aplikasi
Jalankan perintah berikut di terminal:
```bash
flutter run
```

Pastikan emulator atau device Android/iOS sudah terhubung.

## 👩‍💻 Identitas Pembuat
- **Nama:** Aghniya Nainawa A  
- **Kelas:** XI RPL 1  
- **Mata Pelajaran:** Pemrograman Perangkat Bergerak  
