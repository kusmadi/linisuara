import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Memanggil fungsi untuk menampilkan AlertDialog
            _showAlertDialog(context);
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Mengembalikan widget AlertDialog
        return AlertDialog(
          // Judul dialog
          title: const Text('Konfirmasi'),
          // Konten dialog
          content: const Text('Apakah Anda yakin ingin melanjutkan?'),
          // Tombol-tombol dalam dialog
          actions: <Widget>[
            // Tombol "Tidak"
            TextButton(
              onPressed: () {
                // Menutup dialog dan mengembalikan nilai false
                Navigator.of(context).pop(false);
              },
              child: const Text('Tidak'),
            ),
            // Tombol "Ya"
            TextButton(
              onPressed: () {
                // Menutup dialog dan mengembalikan nilai true
                Navigator.of(context).pop(true);
              },
              child: const Text('Ya'),
            ),
          ],
        );
      },
    ).then((value) {
      // Menangani hasil dari dialog
      if (value == true) {
        // Jika pengguna memilih "Ya"
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu memilih Ya')),
        );
      } else {
        // Jika pengguna memilih "Tidak"
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu memilih Tidak')),
        );
      }
    });
  }
}
