import 'package:flutter/material.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({super.key});

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menampilkan SnackBar ketika tombol ditekan
            final snackBar = SnackBar(
                content: const Text(
                    'Ini adalah SnackBar!'), // Pesan yang ditampilkan
                action: SnackBarAction(
                  label: 'Tutup', // Label untuk action
                  onPressed: () {
                    // Aksi yang dilakukan ketika tombol action ditekan
                    // Misalnya, menghilangkan SnackBar
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
                duration:
                    const Duration(seconds: 3), // Durasi tampilan SnackBar
                backgroundColor: Colors.blue, // Warna latar belakang SnackBar
                behavior: SnackBarBehavior.floating, // SnackBar mengambang
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10))); // Bentuk SnackBar

            // Menampilkan SnackBar menggunakan ScaffoldMessenger
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Tampilkan SnackBar'),
        ),
      ),
    );
  }
}
