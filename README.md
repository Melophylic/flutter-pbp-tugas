# Tugas 8

## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

> const di Flutter digunakan untuk mendeklarasikan objek atau widget yang tidak akan berubah selama eksekusi aplikasi. 

### Keuntungannya

- `Efisiensi Memori`: Ketika widget diberi label const, Flutter akan membuat satu instance dan menggunakan instance yang sama di seluruh aplikasi.
- `Optimasi Performa`: Flutter tidak perlu membangun ulang widget yang sudah diberi const, sehingga membuat aplikasi lebih cepat.
- `Konsistensi`: const memberikan jaminan bahwa nilai tersebut tetap tidak berubah.

### Kapan Menggunakan const:

- Ketika nilai atau widget tersebut tidak akan berubah.
- Ketika kita ingin mengoptimalkan performa dan memori aplikasi.

### Kapan Tidak Menggunakan const:
- Jika nilai widget atau objek yang dimaksud akan berubah, maka tidak perlu menggunakan `const`.
- Penggunaan `const` pada widget yang mengandung parameter dinamis yang berubah bisa menyebabkan `error`.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

- `Column`: Digunakan untuk menata widget secara vertikal (dari atas ke bawah). Biasanya digunakan ketika kita ingin menampilkan elemen yang ditata secara vertikal.
- `Row`: Digunakan untuk menata widget secara horizontal (dari kiri ke kanan). Biasanya digunakan ketika kita ingin menampilkan elemen yang ditata secara horizontal.
  
### Contoh Column:
```
child: const Column(
            children: [
              Text(
                'Car Commerce',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Padding(padding: EdgeInsets.all(8)),
              Text(
                "Beli mobil terbaik di Car Commerce!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
```

### Contoh Row:
```
Row(
  children: <Widget>[
    Text('Ini'),
    Text('Menyamping'),
  ],
)
```

### Perbandingan:

`Column` lebih cocok digunakan ketika kita ingin elemen ditata secara vertikal

Sedangkan `Row` digunakan untuk tata letak horizontal.

Namun, Keduanya dapat mengandung widget lain seperti `Text`, `Icon`, atau `Container`.

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada form yang saya buat, elemen input yang digunakan adalah:

`TextFormField`: Untuk input teks dari pengguna, seperti nama atau email.

Sedangkan yang tidak saya gunakan ada:

`Checkbox`: Untuk memilih opsi dalam form.

`Radio`: Untuk memilih satu opsi dari beberapa pilihan.

`DropdownButton`: Untuk memilih pilihan dari dropdown menu.

`Switch`: Untuk memilih antara dua kondisi (nyala atau mati).

`Slider`: Untuk memilih nilai numerik dalam rentang tertentu.

`DatePicker`: Untuk memilih tanggal.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Pada main, kita sudah mensetting tema pada tugas 7 dengan:

```
theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
          secondary: Colors.orangeAccent,
        ),
        useMaterial3: true,
      ),
```

Maka, untuk tugas selanjutnya kita hanya perlu menambahkan seperti ini contohnya pada setiap tema yang lain.
```
appbar: AppBar(
...
  backgroundColor: Theme.of(context).colorScheme.primary,
  foregroundColor: Colors.white,
...
),
```

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Dalam Flutter, navigasi antar halaman dapat dilakukan menggunakan `Navigator` dan `MaterialPageRoute` untuk memindahkan pengguna dari satu halaman ke halaman lainnya. Sistem ini menggunakan sistem stack agar kita bisa return dll.

Contoh navigasi antar halaman:

```
onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CarEntryFormPage(),
                  ));
            },
```

pushReplacement akan menukar stack teratas dengan stack yang baru agar isi dari stack semisal tidak ada yang lain masih tetap 1.

Navigasi ini memungkinkan kita untuk berpindah antar halaman dengan mudah, dan dapat juga disertai dengan animasi untuk transisi yang lebih mulus.


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
Dalam metode `build()`, saya menggunakan widget `Scaffold` untuk membangun struktur utama halaman. Saya menambahkan AppBar dengan judul "Car Commerce" dan membuat bagian body halaman menggunakan `SingleChildScrollView` agar konten bisa di scroll dan tidak overflow. 

### Membuat Widget InfoCard untuk Menampilkan Informasi Pengguna
Saya membuat widget `InfoCard`, yang digunakan untuk menampilkan informasi NPM, Nama, dan Kelas pengguna. Kartu ini terdiri dari `Card` dengan `Container` yang memiliki teks judul dan konten. `InfoCard` menerima parameter title dan content yang akan diisi sesuai informasi pengguna.

### Menambahkan InfoCard ke Halaman Utama
Di dalam `Column` pada body, saya menambahkan Wrap untuk menampilkan tiga `InfoCard` secara horizontal, masing-masing berisi informasi NPM, Nama, dan Kelas.

### Membuat Widget ItemCard untuk Setiap Tombol Utama
Saya kemudian membuat widget `ItemCard` yang menerima objek `ItemHomepage` sebagai parameter. Setiap `ItemCard` akan memiliki ikon dan teks dari items yang telah saya buat sebelumnya. Saya juga menambahkan InkWell untuk memberikan efek sentuhan serta menampilkan `SnackBar` saat tombol ditekan.

### Mengatur Tombol dalam GridView di Halaman Utama
Saya menambahkan `GridView.count` dalam `Column` untuk menampilkan `ItemCard` dalam bentuk grid dengan tiga kolom, menampilkan opsi “Lihat Daftar Produk,” “Tambah Produk,” dan “Logout”.
