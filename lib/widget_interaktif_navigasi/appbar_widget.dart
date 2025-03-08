import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Judul yang ditampilkan di AppBar
          title: const Text('AppBar Linisuara'),
          actions: [
            IconButton(
                icon: const Icon(Icons.search), // Tombol aksi di AppBar
                onPressed: () {}), // Aksi yang dilakukan saat tombol ditekan
            IconButton(
                icon: const Icon(Icons.more_vert), // Tombol aksi di AppBar
                onPressed: () {}), // Aksi yang dilakukan saat tombol ditekan
          ],
        ),
        body: const Center(child: Text('Belajar Flutter')),
      ),
    );
  }
}
