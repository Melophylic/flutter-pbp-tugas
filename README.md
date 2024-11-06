# Tugas 7

## Stateless Widget dan Stateful Widget

`Stateless Widget` adalah widget yang tidak mengalami perubahan selama aplikasi berjalan. Artinya, widget ini bersifat statis karena tidak memiliki data atau variabel yang bisa berubah. Contoh penggunaannya adalah pada teks atau ikon yang tetap. StatelessWidget hanya memerlukan metode build untuk menggambarkan tampilan UI, sehingga cocok untuk elemen-elemen yang tidak memerlukan perubahan data atau interaksi kompleks.

Sedangkan, `Stateful Widget` memungkinkan perubahan tampilan UI berdasarkan state atau kondisi yang dapat berubah saat aplikasi dijalankan. Widget ini terdiri dari dua kelas: satu untuk widget-nya, dan satu lagi untuk state yang dapat diubah. Dengan StatefulWidget, kita dapat menggunakan fungsi setState() untuk memperbarui UI sesuai dengan data baru.

Perbedaan utama antara keduanya adalah bahwa `StatelessWidget` bersifat statis dan tidak mengalami perubahan, sementara `StatefulWidget` mendukung perubahan UI secara dinamis.

## Widget yang Digunakan dalam Proyek

Dalam proyek ini, beberapa widget yang digunakan adalah:

`Scaffold`: Berfungsi sebagai struktur dasar halaman, menyediakan elemen seperti AppBar dan body untuk tampilan utama aplikasi.

`AppBar`: Menampilkan bilah aplikasi di bagian atas layar dengan judul “Car Commerce”.

`SingleChildScrollView`: Membungkus konten untuk memungkinkan pengguliran jika melebihi ukuran layar, dengan jarak (padding) di sekelilingnya.

`Column`: Menyusun widget secara vertikal di dalam body halaman.

`Wrap`: Menampilkan widget InfoCard secara horizontal dengan tata letak fleksibel sesuai ukuran layar.

`InfoCard` (_custom widget_): Komponen kartu yang digunakan untuk menampilkan informasi seperti NPM, Nama, dan Kelas.

`Card`: Menyediakan elemen berbentuk kartu dengan efek bayangan (elevasi) untuk tampilan yang lebih interaktif.

`GridView`.count: Membuat grid dengan jumlah kolom yang ditentukan (dalam hal ini 3 kolom) untuk menyusun widget ItemCard secara teratur.

`ItemCard` (_custom widget_): Komponen kartu yang menampilkan ikon dan teks yang disesuaikan untuk setiap tombol pilihan seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout".

`Material`: Digunakan sebagai latar belakang pada kartu ItemCard dan memungkinkan penerapan warna sesuai tema aplikasi.

`InkWell`: Menyediakan efek sentuhan (tappable) pada kartu ItemCard untuk interaksi pengguna, menampilkan SnackBar saat ditekan.

`Icon`: Menampilkan ikon di dalam ItemCard untuk menggambarkan fungsi masing-masing tombol.

`Text`: Menampilkan teks pada AppBar, InfoCard, dan ItemCard sebagai judul dan konten yang relevan.

## Fungsi dari setState()

`setState()` adalah fungsi dalam StatefulWidget yang digunakan untuk memperbarui UI saat terjadi perubahan pada state widget. 
Saat `setState()` dipanggil, Flutter akan merender ulang widget sehingga perubahan tersebut tampil di layar. Misalnya, jika terdapat variabel boolean yang menentukan apakah produk ditampilkan atau tidak, `setState()` memungkinkan UI untuk mengikuti nilai terbaru dari variabel tersebut.

## Perbedaan antara const dan final

`const`: Digunakan untuk nilai yang sudah ditentukan saat kompilasi dan tidak dapat diubah. Nilai dari const harus diketahui pada waktu kompilasi.

`final`: Menyediakan nilai yang hanya diinisialisasi sekali, tetapi dapat ditentukan pada runtime. Dengan final, kita dapat membuat variabel yang tidak dapat diubah setelah inisialisasi, namun nilainya bisa diperoleh saat aplikasi berjalan.

## Cara pengimplementasian

### Membuat Proyek Flutter Baru
Saya memulai dengan membuka terminal dan membuat proyek Flutter baru menggunakan perintah:
```
flutter create car_commerce
```
Setelah proses selesai, saya membuka proyek ini di editor kode untuk memulai pengembangan aplikasi.

### Menyiapkan Struktur Dasar di main.dart
Setelah itu, saya membuka file `main.dart` di folder `lib` dan membersihkan semua kode bawaan yang ada. Kemudian, saya mengimpor file `cars.dart` (yang akan saya buat nanti) dan menambahkan struktur dasar aplikasi, termasuk fungsi utama (main) untuk menjalankan aplikasi. Berikut kode dasarnya. pada file ini, saya membuat kelas `MyApp` sebagai root aplikasi dan mengatur theme aplikasi dengan warna utama (orange) dan warna sekunder (deep orange).

### Membuat Halaman Utama di cars.dart
Selanjutnya, saya membuat file `cars.dart` di folder `lib` untuk mendefinisikan halaman utama aplikasi `(MyHomePage)`, yang akan menampilkan informasi pengguna dan beberapa tombol utama aplikasi.

### Menambahkan Variabel dan Data di MyHomePage
Saya mulai dengan membuat kelas MyHomePage sebagai Stateless Widget. Di dalam kelas ini, saya mendefinisikan beberapa variabel untuk menampilkan informasi pengguna seperti NPM, Nama, dan Kelas. Saya juga membuat daftar items yang menyimpan tiga opsi utama aplikasi, yaitu "Lihat Daftar Produk," "Tambah Produk," dan "Logout," yang masing-masing dilengkapi ikon yang sudah ada dari flutter.

### Membuat Struktur Tampilan di build()
Dalam metode `build()`, saya menggunakan widget `Scaffold` untuk membangun struktur utama halaman. Saya menambahkan AppBar dengan judul "Car Commerce" dan membuat bagian body halaman menggunakan `SingleChildScrollView` agar konten bisa di scroll agar tidak overflow. 

### Membuat Widget InfoCard untuk Menampilkan Informasi Pengguna
Saya membuat widget `InfoCard`, yang digunakan untuk menampilkan informasi NPM, Nama, dan Kelas pengguna. Kartu ini terdiri dari `Card` dengan `Container` yang memiliki teks judul dan konten. `InfoCard` menerima parameter title dan content yang akan diisi sesuai informasi pengguna.

### Menambahkan InfoCard ke Halaman Utama
Di dalam `Column` pada body, saya menambahkan Wrap untuk menampilkan tiga `InfoCard` secara horizontal, masing-masing berisi informasi NPM, Nama, dan Kelas.

### Membuat Widget ItemCard untuk Setiap Tombol Utama
Saya kemudian membuat widget `ItemCard` yang menerima objek `ItemHomepage` sebagai parameter. Setiap `ItemCard` akan memiliki ikon dan teks dari items yang telah saya buat sebelumnya. Saya juga menambahkan InkWell untuk memberikan efek sentuhan serta menampilkan `SnackBar` saat tombol ditekan.

### Mengatur Tombol dalam GridView di Halaman Utama
Saya menambahkan `GridView.count` dalam `Column` untuk menampilkan `ItemCard` dalam bentuk grid dengan tiga kolom, menampilkan opsi “Lihat Daftar Produk,” “Tambah Produk,” dan “Logout”.
