# USE CASE ARAS #

Berikut ini merupakan daftar use case dari ARAS beserta deskripsi dari masing-masing use case tersebut :


## UC.01 Login ##

Pada UC. 01 ini Aktor yang terlibat antara lain :
  1. Admin
  1. Guru
  1. Pegawai Sekolah / TU

Berikut ini adalah penjelasan dari UC.01 :

Admin, guru atau pegawai sekolah yang kemudian disebut sebagai user, berada dalam halaman login kemudian mengisikan text field Nama Pengguna sebanyak 6 karakter lalu mengisikan text field Kata Kunci sebanyak 6 karakter dan dilanjutkan dengan menekan tombol Masuk. Sistem akan membuat user yang memiliki Nama Pengguna dan Kata Kunci berdasarkan isian pada text field Nama Pengguna dan Kata Kunci lalu mencari aktor tersebut pada tabel atau daftar user dan menemukan user tersebut kemudian sistem akan menampilkan halaman utama.

Apabila salah satu text field atau bahkan keduanya kosong maka sistem akan menampilkan pesan kesalahan berupa peringatan kepada user untuk mengisi kembali text field yang tersedia

Apabila isian salah satu text field tersebut tidak ditemukan di data user maka sistem akan menampilkan pesan kesalahan berupa peringatan kepada user bahwa Nama Penggguna atau Kata Kunci tidak ditemukan.


## UC.02 Logout ##

Pada UC. 02 ini Aktor yang terlibat antara lain :
  1. Admin
  1. Guru
  1. Pegawai Sekolah / TU

Berikut ini adalah penjelasan dari UC.02 :

Admin, guru atau pegawai sekolah yang kemudian disebut sebagai user, berada pada halaman utama/Home aplikasi kemudian menekan tombol Logout atau Keluar. Sistem kemudian menampilkan peringatan apakah user akan benar-benar keluar atau tidak, bila user mengkonfirmasi dengan menekan tombol Ya, maka sistem akan mengeluarkan user dari aplikasi dan membawa user ke halaman login

Apabila user memilih konfirmasi Tidak aka sistem akan membawa user ke menu atau halaman utama/Home.


## UC.03 Rekam Pengguna _(Add User)_ ##

Pada UC.03 ini Aktor yang terlibat adalah Admin.

Admin sebagai user berada pada halaman Tambah Pengguna, kemudian mengisikan text field data user yang terdiri dari Nama, NIP, Nama Pengguna, Kata Kunci, Nomor Telepon dilanjutkan dengan menekan tombol Tambah. Sistem kemudian akan melakukan penyimpanan data-data yang sudah di masukkan di text field yang disediakan ke dalam tabel User dan memberikan informasi bahwa Penambahan User berhasil

Apabila admin tidak melengkapi atau mengisi semua tex filed yang tersedia maka sistem akan menampilkan peringatan isian data tidak lengkap agar admin melengkapi isian text field tersebut.

Apabila admin kurang mengisikan digit untuk Nama Pengguna ataupun Kata Kunci (kurang dari 6 digit), maka sistem akan menampilkan peringatan agar sistem melengkapi Nama Pengguna atau Kata Kunci sesuai dengan jumlah digit yang ditetapkan.


## UC.04 Ubah Pengguna _(Edit User)_ ##

Pada UC.04 ini Aktor yang terlibat adalah Admin.

Admin sebagai user berada pada halaman user atau pengguna, kemudian menekan  tombol edit kemudian sistem akan membawa user ke halaman edit user / pengguna. Disini user data melakukan perubahan terhadap data yang terdapat pada text field Nama, NIP, Nama Pengguna, Kata Kunci, Nomor Telepon. Setelah user melakukan perubahan kemudian menekan tombol simpan dan sistem akan menyimpan perubahan yang dilakkan pada text field yang ada pada tabel user dan sistem akan memberitahukan user bahwa proses perubahan berhasil.

Apabila admin tidak melengkapi atau mengisi semua tex filed yang tersedia maka sistem akan menampilkan peringatan isian data tidak lengkap agar admin melengkapi isian text field tersebut.

Apabila admin kurang mengisikan digit untuk Nama Pengguna ataupun Kata Kunci (kurang dari 6 digit), maka sistem akan menampilkan peringatan agar sistem melengkapi Nama Pengguna atau Kata Kunci sesuai dengan jumlah digit yang ditetapkan.


## UC.05 Lihat Pengguna _(View User)_ ##

Pada UC.05 ini, aktor yang terlibat adalah Admin

Admin berada pada halaman Pengguna, kemudian memasukkan nama atau sebagian nama dari pengguna di text field pencarian kemudian menekan tombol Tampil. Sistem kemudian akan mencari data user sesuai dengan isian text field pada tabel User, kemudian sistem akan menampilkan data dari user yang ditemukan.

Apabila sistem tidak menemukan data user berdasarkan isian yang diisikan Admin pada text field pencarian, maka sistem akan memberitahukan Admin bahwa User Tidak Ditemukan dan sistem akan mengembalikan Admin ke halaman Pengguna. Terdapat pula fasilitas untuk UBAH PENGGUNA dan HAPUS PENGGUNA.


## UC.06 Rekam Siswa _(Add Siswa)_ ##

Pada UC. 06 ini aktor yang terlibat adalah Pegawai Sekolah / TU

Petugas TU sekolah yang selanjutnya disebut sebagai user berada pada halaman Tambah Siswa, kemudian mengisikan text field data user yang terdiri dari NIS (Nomor Induk SIswa), Nama Siswa, Kelas(menu drop down), Semester(menu drop down), Nama Orang Tua, Alamat, Nomor Telepon Orang Tua, Tahun kemudian dilanjutkan dengan menekan tombol Tambah. Sistem kemudian akan melakukan penyimpanan data-data yang sudah di masukkan di text field yang disediakan ke dalam tabel Siswa dan memberikan informasi bahwa Penambahan Siswa berhasil

Apabila user tidak melengkapi atau mengisi semua tex filed yang tersedia maka sistem akan menampilkan peringatan isian data tidak lengkap agar user melengkapi isian text field tersebut.


## UC.07 Ubah Siswa _(Edit Siswa)_ ##

Pada UC. 07 ini aktor yang terlibat adalah Pegawai Sekolah / TU

Petugas TU sekolah yang selanjutnya disebut sebagai user berada pada halaman Siswa, kemudian menekan tombol Ubah dan kemudian sistem akan membawa user ke halaman edit user / pengguna. di halaman ini user data melakukan perubahan terhadap data yang terdapat pada text field NIS (Nomor Induk SIswa), Nama Siswa, Kelas(menu drop down), Semester(menu drop down), Nama Orang Tua, Alamat, Nomor Telepon Orang Tua. Setelah user melakukan perubahan kemudian menekan tombol simpan dan sistem akan menyimpan perubahan yang dilakkan pada text field yang ada pada tabel Siswa dan sistem akan memberitahukan user bahwa proses perubahan berhasil.

Apabila user tidak melengkapi atau mengisi semua tex filed yang tersedia maka sistem akan menampilkan peringatan isian data tidak lengkap agar user melengkapi isian text field tersebut.


## UC.08 Lihat Siswa _(View Siswa)_ ##

Pada UC. 08 ini aktor yang terlibat antara lain :
  1. Admin
  1. Guru
  1. Petugas TU sekolah

Admin, guru, petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Siswa, kemudian memasukkan nama atau sebagian nama dari nama siswa di text field pencarian kemudian menekan tombol Tampil. Sistem kemudian akan mencari data user sesuai dengan isian text field pada tabel User, kemudian sistem akan menampilkan data dari user yang ditemukan.

Apabila sistem tidak menemukan data siswa berdasarkan isian yang diisikan user pada text field pencarian, maka sistem akan memberitahukan user bahwa Siswa Tidak Ditemukan dan sistem akan mengembalikan user ke halaman Siswa.

Khusus untuk Petugas TU, sistem memberikan tambahan fasilitas untuk bisa UBAH SISWA dan HAPUS SISWA.


## UC.09 REKAM KELAS _(Add Kelas)_ ##

Aktor : Admin (Administrator)

Admin memilih menu TAMBAH KELAS, kemudian mengisikan text field Nama Kelas sebanyak 3 karakter dan text field Guru Wali yang berupa menu drop down berisi daftar pengguna yang telah terdaftar, lalu klik tombol simpan. Sistem akan memeriksa apakah kedua text field sudah terisi dengan karakter yang sesuai dengan pengaturan, jika salah satu atau keduanya kosong atau tidak sesuai dengan pengaturan akan muncul peringatan untuk mengisi sesuai dengan petunjuk. Jika keduanya sudah terisi dengan benar maka sistem akan mencari apakah Nama Kelas sudah terdapat pada sistem, jika sudah maka akan muncul peringatan bahwa kelas sudah terdaftar, lalu admin mengisi ulang text field Nama Kelas atau membatalkan penambahan kelas. Jika Nama Kelas belum terdaftar di sistem, maka sistem akan memeriksa apakah Guru Wali sudah terdaftar di sistem sebagai salah satu Guru Wali kelas lain, jika belum maka sistem akan menyimpan data kelas yang baru ditambahkan, jika sudah maka akan muncul peringatan bahwa Guru Wali sudah menjadi wali kelas lain, lalu admin mengisi ulang text field Guru Wali atau membatalkan penambahan kelas.


## UC.10 UBAH KELAS _(Edit Kelas)_ ##

Aktor : Admin (Administrator)

Admin memilih menu UBAH KELAS, lalu mengubah isi text field Nama Kelas sebanyak 3 karakter dan atau text field Guru Wali yang berupa menu drop down berisi daftar pengguna yang telah terdaftar,lalu menekan tombol simpan. Sistem akan memeriksa apakah kedua text field sudah terisi dengan karakter yang sesuai dengan pengaturan, jika salah satu atau keduanya kosong atau tidak sesuai dengan pengaturan akan muncul peringatan untuk mengisi sesuai dengan petunjuk. Jika keduanya sudah terisi dengan benar maka sistem akan mencari apakah Nama Kelas sudah terdapat pada sistem, jika sudah maka akan muncul peringatan bahwa kelas sudah terdaftar, lalu admin mengisi ulang text field Nama Kelas atau membatalkan perubahan kelas. Jika Nama Kelas belum terdaftar di sistem, maka sistem akan memeriksa apakah Guru Wali sudah terdaftar di sistem sebagai salah satu guru wali kelas lain, jika belum maka sistem akan menyimpan data kelas yang baru diubah, jika sudah maka akan muncul peringatan bahwa Guru Wali sudah menjadi wali kelas lain, lalu admin mengisi ulang text field Guru Wali atau membatalkan perubahan kelas.


## UC.11 LIHAT KELAS _(View Kelas)_ ##

Aktor : Admin (Administrator), Petugas TU, Guru

Admin (Administrator), Petugas TU, Guru memilih menu LIHAT KELAS, kemudian memilih kelas yang akan ditampilkan. Sistem akan menampilkan daftar kelas yang telah terdaftar berikut nama guru wali masing-masing kelas. Khusus untuk Admin, sistem memberikan tambahan fasilitas untuk bisa UBAH KELAS dan HAPUS KELAS.


## UC.12 REKAM SEMESTER _(Add Semester)_ ##

Aktor : Admin (Administrator)

Admin memilih menu TAMBAH SEMESTER, kemudian memilih Nama Semester yang berupa menu drop down pilihan Ganjil atau Genap, mengisi tahun lalu memilih tanggal aktifnya semester tersebut, lalu klik tombol simpan. Sistem akan memeriksa apakah text field sudah terisi dengan karakter yang sesuai dengan pengaturan, jika kosong atau tidak sesuai dengan pengaturan akan muncul peringatan untuk mengisi sesuai dengan petunjuk. Jika sudah terisi dengan benar maka sistem akan mencari apakah gabungan Nama Semester dan Tahun sudah terdapat pada sistem, jika sudah maka akan muncul peringatan bahwa semester sudah terdaftar, lalu admin mengisi ulang text field Nama Semester dan atau Tahun atau membatalkan penambahan semester. Jika Nama Semester belum terdaftar di sistem, maka sistem akan menyimpan data semester yang baru ditambahkan.


## UC.13 UBAH SEMESTER _(Edit Semester)_ ##

Aktor : Admin (Administrator)

Admin memilih menu UBAH SEMESTER, kemudian mengubah isi text field Nama Semester yang berupa menu drop down pilihan Ganjil atau Genap dan atau tahun dan atau tanggal lalu klik tombol simpan. Sistem akan memeriksa apakah text field sudah terisi dengan karakter yang sesuai dengan pengaturan, jika kosong atau tidak sesuai dengan pengaturan akan muncul peringatan untuk mengisi sesuai dengan petunjuk. Jika sudah terisi dengan benar maka sistem akan mencari apakah gabungan Nama Semester dan Tahun sudah terdapat pada sistem, jika sudah maka akan muncul peringatan bahwa semester sudah terdaftar, lalu admin mengisi ulang text field Nama Semester atau membatalkan perubahan semester. Jika Nama Semester belum terdaftar di sistem, maka sistem akan menyimpan data semester yang baru diubah.


## UC.14 LIHAT SEMESTER _(View Semester)_ ##

Aktor : Admin (Administrator), Petugas TU, Guru

Admin (Administrator), Petugas TU, Guru memilih menu LIHAT SEMESTER. Sistem akan menampilkan daftar semester beserta tanggal aktif semester tersebut. Khusus untuk Admin, sistem memberikan tambahan fasilitas untuk bisa UBAH SEMESTER dan HAPUS SEMESTER.


## UC.15 Cetak data siswa per siswa ##

Aktor : Petugas TU

Petugas TU memilih menu CETAK DATA SISWA PER SISWA, mencari siswa dengan kata kunci nomor induk atau nama siswa. Sistem akan menampilkan di layar hasil pencarian data siswa sesuai dengan data yang tersimpan dalam sistem. Petugas TU lalu memilih siswa mana yang akan dicetak datanya. Sistem akan menampilkan data siswa tersebut di layar dan juga terdapat pilihan untuk cetak di printer.

## UC.16 Cetak data siswa per kelas ##

Aktor : Petugas TU

Petugas TU memilih menu CETAK DATA SISWA PER KELAS, memilih kelas apa yang akan ditayangkan. Sistem akan menampilkan di layar data siswa per kelas sesuai dengan data yang tersimpan dalam sistem, juga terdapat pilihan untuk cetak di printer.


## UC.17 Cetak data siswa per tingkat ##

Aktor : Petugas TU

Petugas TU memilih menu CETAK DATA SISWA PER TINGKAT, memilih tingkat berapa yang akan ditayangkan. Sistem akan menampilkan di layar data siswa per tingkat sesuai dengan data yang tersimpan dalam sistem, juga terdapat pilihan untuk cetak di printer.


## UC.18 REKAM ABSENSI _(Add Absensi)_ ##

Aktor: Guru

Guru sebagai user masuk ke dalam halaman menu absensi. Didalamnya terdapat submenu “tambah”, “lihat” dan “cetak”. Kemudian pilih submenu “tambah”. Sistem akan mengarahkan ke halaman tambah absensi. User kemudian memilih kelas, semester, serta tanggal (secara default tanggalnya adalah tanggal hari ini). Sistem akan memunculkan daftar siswa sesuai dengan pilihan yang dilakukan oleh user. Kemudian user akan melakukan input absensi (default absensi memiliki nilai “masuk”). Untuk siswa yang tidak masuk, user memilih alasan siswa tersebut tidak masuk. Sistem akan menampilkan absensi sesuai pilihan user pada kolom keterangan sebelah kanan. Setelah user memasukkan semua data absensi,tekan tombol simpan. Sistem akan menampilkan kotak dialog “Apakah user yakin untuk menyimpan?”, dengan pilihan jawaban Ya atau Tidak. Jika User memilih “Ya”, maka system akan menyimpan data absensi dan mengembalikan ke menu absensi. Jika user memilih “Tidak” maka sistem akan menampilkan halaman tambah absensi kembali.


## UC.19 LIHAT DATA ABSENSI HARIAN ##

Aktor: Admin, guru, petugas TU

Admin, guru, petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “lihat” absensi. Kemudian pada submenu “lihat” absensi tersebut akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih harian, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dilihat. Pilihannya antara lain pilihan kelas, semester, dan tanggal/ bulan/ tahun. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “lihat”. Sistem akan menampilkan halaman daftar absensi sesuai dengan permintaan user. Jika pilihan tanggal dari user adalah hari libur maka system akan menampilkan pesan “Data Tidak Tersedia, karena bertepatan dengan hari libur sekolah”.


## UC.20. LIHAT DATA ABSENSI PER BULAN ##

Aktor: Admin, guru, petugas TU

Admin, guru, petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “lihat” absensi. Kemudian pada submenu “lihat” absensi akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih bulanan, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dilihat. Pilihannya antara lain pilihan kelas, semester, dan bulan/tahun. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “lihat”. Sistem akan menampilkan halaman daftar absensi sesuai dengan permintaan user. Selanjutnya jika user memilih bulan dimana pada bulan tersebut sekolah libur selama satu bulan penuh, maka system menampilkan pesan “Data tidak tersedia”.


## UC. 21. LIHAT DATA ABSENSI PER SEMESTER ##

Aktor: Admin, guru, petugas TU

Admin, guru, petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “lihat” absensi. Kemudian pada submenu “lihat” absensi akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih semesteran, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dilihat. Pilihannya antara lain pilihan kelas, semester, dan tahun ajaran. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “lihat”. Sistem akan menampilkan halaman daftar absensi sesuai dengan permintaan user.


## UC. 22. CETAK REKAP ABSENSI PER HARI ##

Aktor: Petugas TU

Petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “cetak” absensi. Kemudian pada submenu “cetak” absensi akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih harian, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dicetak. Pilihannya antara lain pilihan semester, dan tahun ajaran. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “cetak”. Sistem akan menampilkan terlebih dahulu halaman daftar absensi sesuai dengan permintaan user . Pada halaman tersebut terdapat tombol “cetak”. Sistem kemudian menampilkan pesan “Apakah anda ingin mencetak absensi hari ini?”, system memberikan pilihan bagi user “Ya” atau “Tidak”. Jika user memilih “Ya” maka system akan meneruskan ke Print Properties. User meneruskan untuk mencetak dokumen absensi tersebut. Jika user memilih “tidak” maka system akan menampilkan halaman cetak absensi kembali.


## UC. 23. CETAK REKAP ABSENSI PER BULAN ##

Aktor: Petugas TU

Petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “cetak” absensi. Kemudian pada submenu “cetak” absensi akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih bulanan, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dicetak. Pilihannya antara lain pilihan kelas, bulan, dan tahun. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “cetak”. Sistem akan menampilkan terlebih dahulu halaman daftar absensi sesuai dengan permintaan user . Pada halaman tersebut terdapat tombol “cetak”. Sistem kemudian menampilkan pesan “Apakah anda ingin mencetak absensi bulan …… tahun…..?”, system memberikan pilihan bagi user “Ya” atau “Tidak”. Jika user memilih “Ya” maka system akan meneruskan ke Print Properties. User meneruskan untuk mencetak dokumen absensi tersebut. Jika user memilih “tidak” maka system akan menampilkan halaman cetak absensi kembali.


## UC. 24. CETAK REKAP ABSENSI PER SEMESTER ##

Aktor: Petugas TU

Petugas TU sekolah selanjutnya disebut sebagai user berada pada halaman Absensi. Kemudian user memilih submenu “cetak” absensi. Kemudian pada submenu “cetak” absensi akan muncul pilihan submenu harian, bulanan, atau semesteran. User memilih bulanan, maka sistem akan menampilkan halaman untuk memilih data absensi yang ingin dicetak. Pilihannya antara lain pilihan kelas, semester, dan tahun ajaran. Kemudian User menentukan pilihannya, selanjutnya tekan tombol “cetak”. Sistem akan menampilkan terlebih dahulu halaman daftar absensi sesuai dengan permintaan user . Pada halaman tersebut terdapat tombol “cetak”. User tekan “cetak”, maka sistem kemudian menampilkan pesan “Apakah anda ingin mencetak absensi semester …… tahun ajaran…..?”, dan system memberikan pilihan bagi user “Ya” atau “Tidak”. Jika user memilih “Ya” maka system akan meneruskan ke Print Properties. User meneruskan untuk mencetak dokumen absensi tersebut. Jika user memilih “tidak” maka system akan menampilkan halaman cetak absensi kembali.


## UC. 25. KIRIM KONFIRMASI SMS HARIAN ##

Aktor: Petugas TU

Petugas TU selanjutnya disebut sebagai user berada pada halaman Konfirmasi SMS. Ketika User memilih menu Konfirmasi SMS, system akan menampilkan daftar siswa yang tidak masuk sekolah. Data-data yang ditampilkan antara lain nama siswa, kelas, alasan tidak masuk sekolah, serta nomor telepon genggam Walinya (Orangtua). Selanjutnya user menekan tombol “kirim”, system akan mengirimkan data berupa nama, kelas, serta alasan tidak masuk kelas ke masing-masing nomor telepon genggam para wali murid (orang tua). Umpan balik (balasan SMS) yang diterima system dari orang tua tentang kebenaran alasan tidak masuk sekolah (Ya atau Tidak)selanjutnya  akan disimpan oleh system.


## UC.26 CETAK LAPORAN KONFIRMASI PER BULAN ##

Aktor : Petugas TU

Petugas TU memilih menu CETAK LAPORAN KONFIRMASI PER BULAN, memilih bulan dan tahun berapa yang akan dicetak. Sistem akan menampilkan di layar daftar absensi siswa beserta status konfirmasi dari orang tua/ wali murid, juga terdapat pilihan untuk cetak di printer.


## UC.27 HAPUS PENGGUNA _(Delete User)_ ##

Aktor : Admin (Administrator)

Pada halaman pengguna, Admin memilih salah satu pengguna atau seluruh penggguna kemudian menekan tombol HAPUS, kemudian sistem akan menampilkan sebuah dialog box yang berisi pertanyaan apakah Admin yakin akan menghapus pengguna tersebut dari sistem. Jika admin memilih tombol OK maka sistem akan menghapus semua data pengguna tersebut dari sistem.

Apabila Admin memilih tombol BATAL, maka sistem akan membatalkan proses penghapusan pengguna dan mengembalikan Admin ke halaman pengguna.


## UC.28 HAPUS SISWA _(Delete Siswa)_ ##

Aktor : Petugas TU

Petugas TU yang selanjutnya disebut user berada pada halaman Siswa, kemudian user menekan tombol HAPUS, sistem akan menampilkan sebuah dialog box yang berisi pertanyaan apakah user yakin akan menghapus seluruh data siswa tersebut dari sistem. Jika user memilih tombol OK maka sistem akan menghapus semua data siswa tersebut dari sistem.

Jika user memilih BATAL, maka sistem akan membatalkan proses penghapusan siswa dan mengembalikan user ke halaman Siswa.


## UC.29 HAPUS KELAS _(Delete Kelas)_ ##

Aktor : Admin (Administrator)

Admin memilih menu HAPUS KELAS, sistem akan menampilkan sebuah dialog box yang berisi pertanyaan apakah pengguna yakin akan menghapus seluruh data kelas tersebut dari sistem. Jika admin memilih tombol OK maka sistem akan menghapus semua data kelas tersebut dari sistem. Jika Admin memilih BATAL, maka sistem akan membatalkan proses penghapusan kelas.


## UC.30 HAPUS SEMESTER _(Delete Semester)_ ##

Aktor : Admin (Administrator)

Admin memilih menu HAPUS SEMESTER, sistem akan menampilkan sebuah dialog box yang berisi pertanyaan apakah pengguna yakin akan menghapus seluruh data semester tersebut dari sistem. Jika admin memilih tombol OK maka sistem akan menghapus semua data semester tersebut dari sistem. Jika Admin memilih BATAL, maka sistem akan membatalkan proses penghapusan semester.


## UC.31 PENGATURAN TANGGAL ##

Aktor : Admin (Administrator)

Admin memilih menu PENGATURAN TANGGAL, lalu memilih tanggal libur sekolah lalu menekan tombol simpan. Sistem akan menyimpan data tersebut sehingga sistem secara otomatis akan melewati tanggal yang telah diatur sebagai hari libur pada saat pengisian absensi.


## UC.32 UBAH DATA ABSENSI ##

Aktor : Petugas TU

Petugas TU memilih menu UBAH DATA ABSENSI lalu memilih tanggal berapa dan dari kelas apa absensi yang akan diubah data absensinya. Sistem akan menampilkan daftar absensi pada tanggal dan kelas yang telah dipilih. Petugas TU kemudian mengubah data yang perlu dilakukan perbaikan misalnya saja mengenai alasan absensi salah satu siswa yang tidak hadir tanpa keterangan diubah menjadi sakit setelah melampirkan surat keterangan dari dokter, lalu menekan tombol simpan. Sistem akan menyimpan data baru dan menimpa data sebelum diubah.