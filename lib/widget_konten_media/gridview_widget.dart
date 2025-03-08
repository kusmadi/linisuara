import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  // Daftar gambar yang akan ditampilkan dalam GridView
  final List<String> images = [
    'assets/images/user1.png',
    'assets/images/user2.png',
    'assets/images/user3.png',
    'assets/images/user4.png',
    'assets/images/user5.png',
    'assets/images/user6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView')),
      body: GridView.builder(
        padding:
            const EdgeInsets.all(10.0), // Mengatur padding di sekitar GridView
        // Mengatur jumlah kolom dalam grid
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 10.0, // Spasi antar kolom
          mainAxisSpacing: 10.0, // Spasi antar baris
        ),
        // Jumlah total item yang akan ditampilkan
        itemCount: images.length,
        // Fungsi untuk membangun setiap item dalam grid
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[300],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                images[index],
                fit: BoxFit
                    .cover, // Mengatur gambar agar menutupi seluruh container
              ),
            ),
          );
        },
      ),
    );
  }
}
