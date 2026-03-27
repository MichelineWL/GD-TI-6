# Proyek Platformer Godot - Tutorial 6

Proyek ini adalah pengembangan dari Tutorial 4 yang berfokus pada implementasi sistem Menu dan Graphical User Interface (GUI) menggunakan Godot Engine 4.6.

## Tutorial 4: Dasar Platformer
Pada tahap sebelumnya, telah diimplementasikan mekanisme dasar permainan platformer termasuk:
- Karakter pemain dengan pergerakan dasar (walk, jump).
- Sistem tilemap untuk desain level.
- Kamera yang mengikuti pemain.
- Area pemicu (hazard) dasar.

## Tutorial 6: Menu dan In-Game GUI
Tahap ini berfokus pada penambahan elemen antarmuka untuk meningkatkan pengalaman pengguna dan alur permainan yang lengkap.

### Proses Implementasi
Berikut adalah rincian proses pengerjaan fitur pada Tutorial 6:

1. **Main Menu**: 
   - Membuat main menu sesuai dengan tutorial
   - Menghubungkan sinyal `pressed()` pada tombol untuk memicu perpindahan scene ke Level 1.

2. **Sistem Global State (GameGlobal)**:
   - Membuat script `Global.gd` dengan `class_name GameGlobal` yang menyimpan variabel `static var lives`. 
   - Pemilihan metode `class_name` statis dilakukan untuk memastikan konsistensi akses variabel lintas scene tanpa ketergantungan penuh pada sistem Autoload yang terkadang tidak stabil di versi 4.6 saat pemrosesan konkuren.

3. **Life Counter HUD**:
   - Membuat scene `Life Counter.tscn` sebagai elemen GUI dinamis yang menampilkan sisa nyawa pemain di pojok layar.
   - Menggunakan `CanvasLayer` pada setiap level untuk memastikan HUD tetap berada di posisi tetap (overlay) terhadap kamera pemain.

4. **Logika Pengurangan Nyawa dan Game Over**:
   - Memperbarui script `Area2D.gd` untuk mendeteksi tabrakan pemain dengan hazard.
   - Implementasi logika: Jika pemain terkena hazard, nyawa berkurang 1. Jika nyawa mencapai 0, permainan berpindah ke layar `Game Over`. Jika masih ada sisa nyawa, level akan dimuat ulang secara otomatis.

5. **Layar Game Over dan Stage Select**:
   - Membuat layar `Game Over` dengan opsi untuk kembali ke Main Menu.
   - Implementasi fitur tambahan `Stage Select` yang memungkinkan pemain memilih level secara langsung dari menu utama demi kemudahan navigasi.

6. **Fitur Tambahan: Animasi Judul Level (Level Title Intro)**:
   - Menambahkan fitur transisi sinematik berupa judul level ("Level 1" atau "Level 2") yang muncul dengan efek fade-in/fade-out saat stage baru dimulai menggunakan sistem `Tween`. Ini memberikan kesan profesional pada alur permainan.

7. **Perbaikan Layar Kemenangan (Win Screen)**:
   - Menambahkan tombol "Back to Menu" pada layar kemenangan (Keanu "You're Breathtaking") untuk melengkapi siklus permainan ("Game Loop").
   - Mengoptimalkan penamaan file (`WinScreen.tscn`) untuk menghindari masalah pemuatan file (Error 19) pada sistem operasi tertentu.

### Referensi
Dalam proses implementasi, referensi berikut digunakan sebagai pedoman:
- Dokumentasi Resmi Godot 4.6 (Manual): Digunakan untuk memahami sistem GUI Container, Signals, dan transisi antar-scene.
- Materi Tutorial Tutorial 6 Godot Platformer: Panduan utama untuk pembuatan Main Menu dan integrasi sistem nyawa.
