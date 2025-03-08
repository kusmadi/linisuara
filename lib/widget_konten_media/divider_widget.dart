import 'package:flutter/material.dart';

class DividerWidget extends StatefulWidget {
  const DividerWidget({super.key});

  @override
  State<DividerWidget> createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Penggunaan Divider'),
        ),
        body: ListView(
          children: <Widget>[
            // Widget pertama: Teks
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Bagian 1',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            // Divider untuk memisahkan bagian 1 dan bagian 2
            Divider(
              color: Colors.black, // Warna garis
              height: 20, // Tinggi ruang di atas dan di bawah garis
              thickness: 2, // Ketebalan garis
              indent: 16, // Jarak dari sisi kiri
              endIndent: 16, // Jarak dari sisi kanan
            ),

            // Widget kedua: Gambar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                'https://via.placeholder.com/150', // URL gambar
                width: 150,
                height: 150,
              ),
            ),

            // Divider untuk memisahkan bagian 2 dan bagian 3
            Divider(
              color: Colors.grey, // Warna garis
              height: 10, // Tinggi ruang di atas dan di bawah garis
              thickness: 1, // Ketebalan garis
            ),

            // Widget ketiga: Teks lagi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Bagian 3',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
