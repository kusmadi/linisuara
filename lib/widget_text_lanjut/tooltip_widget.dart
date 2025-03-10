import 'package:flutter/material.dart';

class TooltipWidget extends StatefulWidget {
  const TooltipWidget({super.key});

  @override
  State<TooltipWidget> createState() => _TooltipWidgetState();
}

class _TooltipWidgetState extends State<TooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Penggunaan Tooltip'),
        ),
        body: Center(
          child: Tooltip(
            // Teks yang akan ditampilkan saat tooltip muncul
            message: 'Ini adalah tombol dengan tooltip',

            // Opsi tambahan untuk mengatur tampilan tooltip
            height: 40, // Tinggi tooltip
            padding: const EdgeInsets.all(8.0), // Padding di dalam tooltip
            verticalOffset: 20, // Jarak vertikal tooltip dari widget
            preferBelow:
                true, // Tooltip akan muncul di bawah widget jika memungkinkan
            decoration: BoxDecoration(
              color: Colors.blue, // Warna latar belakang tooltip
              borderRadius: BorderRadius.circular(4), // Border radius tooltip
            ),
            textStyle: const TextStyle(
              color: Colors.white, // Warna teks tooltip
              fontSize: 14, // Ukuran teks tooltip
            ),

            // Widget yang akan memiliki tooltip
            child: ElevatedButton(
              onPressed: () {
                // Aksi yang dilakukan saat tombol ditekan
                print('Tombol ditekan!');
              },
              child: const Text('Tombol dengan Tooltip'),
            ),
          ),
        ),
      ),
    );
  }
}
