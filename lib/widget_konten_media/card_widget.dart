import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: Center(child: ContohCard()),
      ),
    );
  }
}

class ContohCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // Properti 'elevation' menentukan tinggi bayangan kartu.
      // Semakin tinggi nilai elevation, semakin terlihat efek bayangan.
      elevation: 5.0,

      // Properti 'shape' digunakan untuk menentukan bentuk kartu.
      // Di sini, kita menggunakan RoundedRectangleBorder untuk memberikan sudut melengkung.
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

      // Properti 'child' adalah konten yang akan ditampilkan di dalam kartu.
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Ukuran kolom disesuaikan dengan kontennya.
        children: <Widget>[
          // ListTile adalah widget yang sering digunakan di dalam Card untuk menampilkan teks dan ikon.
          const ListTile(
            leading: Icon(Icons.album, size: 50), // Ikon di sebelah kiri.
            title: Text('Judul Kartu'), // Judul kartu.
            subtitle: Text('Ini adalah contoh subtitle'), // Subtitle kartu.
          ),

          // Divider adalah garis pemisah antara konten.
          const Divider(),

          // Padding digunakan untuk memberikan jarak di sekitar konten.
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                'Ini adalah contoh konten yang ditampilkan di dalam Card. '
                'Kamu bisa menambahkan widget lain seperti gambar, teks, atau tombol di sini.',
                style: TextStyle(fontSize: 16.0)),
          ),

          // ButtonBar adalah widget yang digunakan untuk menampilkan tombol-tombol.
          ButtonBar(
            children: <Widget>[
              // TextButton adalah tombol dengan teks.
              TextButton(
                child: const Text('Batal'),
                onPressed: () {
                  // Aksi yang dilakukan saat tombol "Batal" ditekan.
                },
              ),
              TextButton(
                child: const Text('Simpan'),
                onPressed: () {
                  // Aksi yang dilakukan saat tombol "Simpan" ditekan.
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
