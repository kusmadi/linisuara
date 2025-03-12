import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Penggunaan Icon Widget')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Icon Widget digunakan untuk menampilkan ikon dari Material Icons
              // Ikon yang digunakan di sini adalah Icons.home dengan ukuran 40 dan warna biru
              Icon(
                Icons.home, // Ikon yang akan ditampilkan
                size: 40.0, // Ukuran ikon
                color: Colors.blue, // Warna ikon
              ),
              SizedBox(height: 20), // Memberikan jarak antara ikon dan teks

              // Icon Widget dengan ikon berbeda dan properti yang berbeda
              Icon(
                Icons.favorite, // Ikon hati
                size: 50.0, // Ukuran ikon
                color: Colors.red, // Warna ikon
              ),
              SizedBox(height: 20), // Memberikan jarak antara ikon dan teks

              // Icon Widget dengan ikon yang memiliki outline
              Icon(
                Icons.star_border, // Ikon bintang dengan outline
                size: 60.0, // Ukuran ikon
                color: Colors.amber, // Warna ikon
              ),
              SizedBox(height: 20), // Memberikan jarak antara ikon dan teks

              // Icon Widget dengan ikon yang diisi (filled)
              Icon(
                Icons.star, // Ikon bintang yang diisi
                size: 60.0, // Ukuran ikon
                color: Colors.amber, // Warna ikon
              ),
              SizedBox(height: 20), // Memberikan jarak antara ikon dan teks

              // Icon Widget dengan ikon yang menggunakan custom color dan size
              Icon(
                Icons.airplanemode_active, // Ikon pesawat
                size: 70.0, // Ukuran ikon
                color: Colors.green, // Warna ikon
              ),
            ],
          ),
        ),
      ),
    );
  }
}
