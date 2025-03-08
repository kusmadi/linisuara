import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomSheet')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Memanggil fungsi untuk menampilkan BottomSheet
            _showBottomSheet(context);
          },
          child: const Text('Tampilkan BottomSheet'),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan BottomSheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Mengatur ukuran kolom seminimal mungkin
            children: <Widget>[
              const Text('Ini adalah BottomSheet',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16.0), // Memberikan jarak antara widget
              const Text(
                'Anda dapat menambahkan berbagai widget di sini, seperti tombol, teks, atau input field.',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Menutup BottomSheet
                  Navigator.pop(context);
                },
                child: const Text('Tutup BottomSheet'),
              ),
            ],
          ),
        );
      },
    );
  }
}
