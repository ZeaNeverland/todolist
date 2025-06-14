# 📝 Flutter ToDo List App

A simple and modern **ToDo List** application built with **Flutter** and powered by **Supabase** for authentication and backend services.

---

## 🚀 Fitur

- ✅ Registrasi & Login pengguna (Email + Password)
- 🔐 Autentikasi aman menggunakan Supabase
- 📝 Menambah, menampilkan, mengedit, dan menghapus tugas (CRUD)
- ⏰ Tenggat waktu tugas dengan indikator visual
- 🔔 Notifikasi tugas yang mendekati tenggat waktu
- 🌙 Dukungan Light & Dark mode
- 📱 UI modern dan responsif

---

## 📦 Teknologi

- **Flutter** - UI Toolkit modern dari Google
- **Supabase** - Backend as a Service (alternatif Firebase)
- **Dart** - Bahasa pemrograman utama untuk Flutter

---

## 📷 Cuplikan Tampilan

> Tambahkan gambar tampilan seperti halaman login, register, dan halaman utama ToDo jika tersedia.

---

## 📁 Struktur Proyek

```
lib/
├── main.dart
├── pages/
│   ├── login_page.dart
│   ├── register_page.dart
│   └── todo_home_page.dart
├── services/        # Opsional
│   ├── auth_service.dart
│   └── todo_service.dart
└── widgets/         # Opsional
    └── todo_card.dart
```

---

## ⚙️ Instalasi

### 1. Clone Repositori

```bash
git clone https://github.com/username/flutter-todolist.git
cd flutter-todolist
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Setup Supabase

- Buka [https://supabase.com](https://supabase.com)
- Buat project baru dan salin `SUPABASE_URL` serta `ANON_KEY`

#### Buat table `profiles`:

| Kolom    | Tipe | Keterangan            |
|----------|------|------------------------|
| id       | UUID | Primary Key (User ID) |
| username | Text | Nama pengguna         |

#### Buat table `todos`:

| Kolom     | Tipe      | Keterangan                   |
|-----------|-----------|------------------------------|
| id        | UUID      | Primary Key                  |
| user_id   | UUID      | Foreign key ke `profiles.id` |
| title     | Text      | Judul tugas                  |
| deadline  | Timestamp | Tenggat waktu (opsional)     |
| is_done   | Boolean   | Status selesai atau belum    |

### 4. Masukkan Credential Supabase ke `main.dart`

```dart
await Supabase.initialize(
  url: 'https://your-project.supabase.co',
  anonKey: 'your-anon-key',
);
```

### 5. Jalankan Aplikasi

```bash
flutter run
```

---

## 🧪 Dependensi

```yaml
dependencies:
  flutter:
    sdk: flutter
  supabase_flutter: ^1.10.0
  flutter_local_notifications: ^15.1.0
  provider: ^6.1.1
```

> Pastikan untuk memeriksa versi terbaru di [pub.dev](https://pub.dev).

---

## 🔜 Rencana Pengembangan

- [ ] Reset password
- [ ] Fitur kategori & prioritas tugas
- [ ] Tampilan kalender

---

## 📃 Lisensi

Proyek ini dilisensikan di bawah lisensi **MIT**.

---

## 👩‍💻 Identitas Pembuat

- **Nama:** Aghniya Nainawa A  
- **Kelas:** XI RPL 1  
- **Mapel:** Pemrograman Perangkat Bergerak
