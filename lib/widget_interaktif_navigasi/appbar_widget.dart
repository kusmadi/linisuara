import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar untuk keperluan responsivitas
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Linisuara'), // Judul yang ditampilkan di AppBar
          actions: [
            IconButton(
                icon: const Icon(Icons.search), // Tombol aksi untuk pencarian
                onPressed:
                    () {}), // Fungsi yang dijalankan saat ikon pencarian ditekan
            IconButton(
                icon: const Icon(
                    Icons.more_vert), // Tombol aksi untuk menu lainnya
                onPressed:
                    () {}), // Fungsi yang dijalankan saat ikon menu lainnya ditekan
          ],
        ),
        body: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Menyusun kolom mulai dari atas
            crossAxisAlignment:
                CrossAxisAlignment.start, // Menyusun konten kolom di kiri
            children: List.generate(
              5, // Menghasilkan 5 elemen (dalam hal ini daftar siswa)
              (index) => Container(
                  width:
                      size.width - 20, // Menyesuaikan lebar dengan ukuran layar
                  padding: const EdgeInsets.all(
                      5), // Memberikan padding di dalam container
                  margin: const EdgeInsets.fromLTRB(
                      10, 5, 10, 5), // Memberikan margin di luar container
                  decoration: BoxDecoration(
                      color:
                          Colors.white, // Memberikan warna latar belakang putih
                      borderRadius: BorderRadius.circular(
                          10), // Membuat sudut-sudut container melengkung
                      boxShadow: const [
                        // Memberikan bayangan pada container
                        BoxShadow(
                            color: Colors.grey, // Warna bayangan
                            offset: Offset(1, 1), // Posisi bayangan
                            blurRadius:
                                0.5, // Menentukan seberapa buram bayangan
                            spreadRadius:
                                0.5) // Menentukan seberapa lebar bayangan
                      ]),
                  child: Row(
                    // Menyusun widget dalam baris
                    children: [
                      // Container untuk gambar/avatar siswa
                      Container(
                        width: 80, // Lebar gambar/avatar
                        height: 100, // Tinggi gambar/avatar
                        padding: const EdgeInsets.all(
                            10), // Padding dalam gambar/avatar
                        margin: const EdgeInsets.only(
                            right: 10), // Memberikan jarak di sisi kanan
                        decoration: BoxDecoration(
                            color: Colors
                                .blueGrey, // Warna latar belakang gambar/avatar
                            borderRadius: BorderRadius.circular(
                                10)), // Membuat sudut-sudut gambar melengkung
                      ),
                      // Kolom untuk informasi teks
                      Column(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Menyusun teks di antara ruang kosong
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Menyusun teks di kiri
                        children: [
                          // Nama siswa
                          Text("Nama Siswa ${index + 1}",
                              style: const TextStyle(
                                  color: Colors.orange, // Warna teks oranye
                                  fontWeight: FontWeight.bold)), // Teks bold
                          const Text("XII RPL 1"), // Teks untuk kelas siswa
                          const Text(
                              "SMK LINISUARA"), // Teks untuk nama sekolah
                          SizedBox(
                            width: size.width -
                                130, // Menyesuaikan lebar dengan layar
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .end, // Menyusun teks di sisi kanan
                              children: [
                                // Tombol "Ubah"
                                Text("Ubah",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize:
                                            10)), // Warna oranye, ukuran teks kecil
                                SizedBox(
                                    width:
                                        10), // Jarak antara tombol "Ubah" dan "Hapus"
                                // Tombol "Hapus"
                                Text("Hapus",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize:
                                            10)), // Warna merah, ukuran teks kecil
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            )),
      ),
    );
  }
}
