# MYSHOP MINI

# Hasil Tampilan

1. Halaman Home
  <img width="1919" height="1007" alt="image" src="https://github.com/user-attachments/assets/6c91e4dc-fb54-44a1-8db0-22aed22f226e" />
  
  <img width="1919" height="1003" alt="image" src="https://github.com/user-attachments/assets/e99fdca5-c5d5-4c6a-8f27-a702abcca546" />

    <img width="753" height="967" alt="image" src="https://github.com/user-attachments/assets/3d2055fc-88a1-48e7-96c8-c0de756b2a66" />

2. Halaman List Product
   <img width="1919" height="884" alt="image" src="https://github.com/user-attachments/assets/12a0d6c9-27cd-41a9-b060-a9f2a3c74645" />

   <img width="1919" height="1007" alt="image" src="https://github.com/user-attachments/assets/5ad831a6-04b6-4d27-ac8e-689505571b15" />

  <img width="751" height="960" alt="image" src="https://github.com/user-attachments/assets/65b03cfb-0787-4e82-bfec-504c8eb250d3" />

  <img width="749" height="963" alt="image" src="https://github.com/user-attachments/assets/09e42f39-9889-4062-a355-eac5341a3de2" />

3. Halaman Detail Product
   <img width="1919" height="1013" alt="image" src="https://github.com/user-attachments/assets/d033bbdd-132e-45c7-8849-f43ddfdf5136" />

   <img width="752" height="965" alt="image" src="https://github.com/user-attachments/assets/ed58dcdd-5322-4390-8798-1232fdf4144f" />


# Soal 4
Tulis widget yang digunakan dalam membangun project tersebut beserta fungsinya!
Jawab:
1.	Scaffold
Digunakan sebagai kerangka utama halaman aplikasi.
Menyediakan struktur default seperti:
•	AppBar
•	Body
•	FloatingActionButton
•	Drawer
Tanpa Scaffold, halaman tidak memiliki struktur standar Material Desig
2.	AppBar
Bar di bagian atas layar yang berisi:
•	Judul
•	Tombol back
•	Action button (misalnya icon search, menu, dll)
Berfungsi memberikan navigasi dan identitas halaman.
3.	SingleChildScrollView
Widget yang memungkinkan isi halaman bisa digulir (scroll).Digunakan ketika isi layar lebih panjang daripada tinggi layar.
4.	Penataan Layout (Layout Widgets)
-	Column
Widget yang menata anak-anaknya secara vertikal (atas ke bawah).
-	Row
Widget yang menata anak-anaknya secara horizontal (kiri ke kanan).
-	Center
Memusatkan child di tengah secara horizontal dan vertikal sesuai ruang yang tersedia.
-	Padding
Memberikan jarak di luar widget child.
Contoh: Padding 20 berarti memberi jarak 20px dari sisi luar.
-	SizedBox
Digunakan untuk:
•	Memberi ruang kosong (spacer)
•	Menetapkan lebar/tinggi tertentu
-	Expanded
Memaksa sebuah widget di dalam Row/Column mengambil ruang tersisa yang ada, biasanya dipakai untuk menyesuaikan layout otomatis.

5.	Grid & List
-	GridView.builder
Membuat tampilan grid (baris & kolom) dengan item yang jumlahnya banyak dan dibuat secara efisien menggunakan builder.
-	SliverGridDelegateWithFixedCrossAxisCount
Mengatur:
•	Berapa kolom (crossAxisCount)
•	Jarak antar kolom/baris
Dipakai oleh GridView untuk mendefinisikan bentuk grid.
6.	Interaksi
-	InkWell
Memberikan efek sentuhan (ripple effect) saat widget ditekan. Biasanya melapisi Card, Container, atau Row agar bisa diklik.
-	IconButton
Tombol berbentuk ikon. Biasanya digunakan untuk tombol back, search, menu, dll.
-	ElevatedButton.icon
Tombol Material dengan background yang naik (raised) dan memiliki ikon + teks. Dipakai untuk tombol aksi utama.
7.	Card & Container
-	Container
Widget serbaguna untuk:
•	memberi padding
•	memberi margin
•	background
•	border
•	shadow
•	ukuran spesifik
Container paling sering dipakai untuk pengaturan tampilan.
-	Card
Kotak bergaya Material Design yang memiliki:
•	shadow
•	elevation
•	rounded corner
Biasanya digunakan untuk menampilkan konten seperti produk.
-	ClipRRect
Memotong child sesuai radius (rounded rectangle). Digunakan untuk membuat gambar memiliki sudut tumpul (rounded).
8.	Teks & Ikon
-	Text
Menampilkan tulisan.
Dapat diberi:
•	warna
•	ukuran
•	fontWeight
•	alignment
-	Icon
Menampilkan ikon Material Design.
Biasanya dipakai pada tombol atau dekorasi.
9.	Gambar
-	Image.asset
Menampilkan gambar dari folder lokal assets. Digunakan untuk gambar produk dalam aplikasi kamu.
10.	Snackbar
-	SnackBar
Popup kecil yang muncul di bawah layar untuk menampilkan pesan singkat, biasanya setelah aksi seperti:
•	menambah ke keranjang
•	menyimpan data
-	ScaffoldMessenger
Komponen yang bertugas untuk menampilkan SnackBar ke layar melalui Scaffold.
11.	Dekorasi
-	BoxDecoration
Mengatur dekorasi Container seperti:
•	warna
•	border
•	gradient
•	background image
•	radius
-	BoxShadow
Memberikan efek bayangan (shadow) pada widget.
-	RoundedRectangleBorder
Digunakan untuk memberi bentuk border dengan sudut melengkung pada:
•	Card
•	Button
•	SnackBar



