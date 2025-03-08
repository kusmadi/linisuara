import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  // Daftar gambar yang akan ditampilkan dalam GridView
  final List<String> images = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/250',
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/350',
    'https://via.placeholder.com/400',
    'https://via.placeholder.com/450',
    'https://via.placeholder.com/500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        // Mengatur padding di sekitar GridView
        padding: EdgeInsets.all(10.0),
        // Mengatur jumlah kolom dalam grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
              child: Image.network(
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
