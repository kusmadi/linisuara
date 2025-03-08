import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Image Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Contoh Image.asset() untuk menampilkan gambar dari aset lokal
              const Text('Gambar dari Aset Lokal:'),
              Image.asset(
                'assets/images/logo.png', // Path ke gambar di folder assets
                width: 100, // Lebar gambar
                height: 100, // Tinggi gambar
                fit: BoxFit
                    .cover, // Cara gambar menyesuaikan dengan kotak yang diberikan
              ),
              const SizedBox(height: 20), // Spasi antara gambar

              // Contoh Image.network() untuk menampilkan gambar dari URL
              const Text('Gambar dari Jaringan:'),
              Image.network(
                'https://flutter.dev/images/flutter-logo-sharing.png', // URL gambar
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),

              // Contoh Image.file() untuk menampilkan gambar dari file di perangkat
              // Pastikan Anda memiliki izin untuk mengakses file di perangkat
              const Text('Gambar dari File:'),
              // Image.file(
              //   File('/path/to/image.png'), // Path ke file gambar di perangkat
              //   width: 100,
              //   height: 100,
              //   fit: BoxFit.cover,
              // ),
              // SizedBox(height: 20),

              // Contoh Image.memory() untuk menampilkan gambar dari data biner
              // Misalnya, Anda memiliki data gambar dalam bentuk byte
              const Text('Gambar dari Memori:'),
              // Image.memory(
              //   bytes, // Data gambar dalam bentuk byte
              //   width: 100,
              //   height: 100,
              //   fit: BoxFit.cover,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
