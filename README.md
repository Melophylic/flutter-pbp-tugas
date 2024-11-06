# carcommerce

## Stateless Widget dan Stateful Widget

`Stateless Widget` adalah widget yang tidak mengalami perubahan selama aplikasi berjalan. Artinya, widget ini bersifat statis karena tidak memiliki data atau variabel yang bisa berubah. Contoh penggunaannya adalah pada teks atau ikon yang tetap. StatelessWidget hanya memerlukan metode build untuk menggambarkan tampilan UI, sehingga cocok untuk elemen-elemen yang tidak memerlukan perubahan data atau interaksi kompleks.

Sedangkan, `Stateful Widget` memungkinkan perubahan tampilan UI berdasarkan state atau kondisi yang dapat berubah saat aplikasi dijalankan. Widget ini terdiri dari dua kelas: satu untuk widget-nya, dan satu lagi untuk state yang dapat diubah. Dengan StatefulWidget, kita dapat menggunakan fungsi setState() untuk memperbarui UI sesuai dengan data baru.

Perbedaan utama antara keduanya adalah bahwa StatelessWidget bersifat statis dan tidak mengalami perubahan, sementara StatefulWidget mendukung perubahan UI secara dinamis.

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

`setState()` adalah fungsi dalam StatefulWidget yang digunakan untuk memperbarui UI saat terjadi perubahan pada state widget. Saat `setState()` dipanggil, Flutter akan merender ulang widget sehingga perubahan tersebut tampil di layar. Misalnya, jika terdapat variabel boolean yang menentukan apakah produk ditampilkan atau tidak, `setState()` memungkinkan UI untuk mengikuti nilai terbaru dari variabel tersebut.

## Perbedaan antara const dan final

`const`: Digunakan untuk nilai yang sudah ditentukan saat kompilasi dan tidak dapat diubah. Nilai dari const harus diketahui pada waktu kompilasi.
`final`: Menyediakan nilai yang hanya diinisialisasi sekali, tetapi dapat ditentukan pada runtime. Dengan final, kita dapat membuat variabel yang tidak dapat diubah setelah inisialisasi, namun nilainya bisa diperoleh saat aplikasi berjalan.
