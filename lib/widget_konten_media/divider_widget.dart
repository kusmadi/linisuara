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
        appBar: AppBar(title: const Text('Penggunaan Divider')),
        body: ListView(
          children: <Widget>[
            // Widget pertama: Teks
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Atas',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),

            // Divider untuk memisahkan bagian 1 dan bagian 2
            const Divider(
              color: Colors.black, // Warna garis
              height: 20, // Tinggi ruang di atas dan di bawah garis
              thickness: 2, // Ketebalan garis
              indent: 16, // Jarak dari sisi kiri
              endIndent: 16, // Jarak dari sisi kanan
            ),

            // Widget kedua: Gambar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/logo.png',
                  width: 150, height: 150),
            ),

            // Divider untuk memisahkan bagian 2 dan bagian 3
            const Divider(
              color: Colors.grey, // Warna garis
              height: 10, // Tinggi ruang di atas dan di bawah garis
              thickness: 1, // Ketebalan garis
            ),

            // Widget ketiga: Teks lagi
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Bawah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
