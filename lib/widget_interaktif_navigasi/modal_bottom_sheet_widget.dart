import 'package:flutter/material.dart';

class ModalBottomSheetWidget extends StatefulWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  State<ModalBottomSheetWidget> createState() => _ModalBottomSheetWidgetState();
}

class _ModalBottomSheetWidgetState extends State<ModalBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ModalBottomSheet')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Menampilkan ModalBottomSheet ketika tombol ditekan
              _showModalBottomSheet(context);
            },
            child: const Text('Tampilkan ModalBottomSheet'),
          ),
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Ini adalah ModalBottomSheet'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Menutup ModalBottomSheet
                    Navigator.pop(context);
                  },
                  child: const Text('Tutup'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
