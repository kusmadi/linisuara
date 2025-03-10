import 'package:flutter/material.dart';

class WidgetStateless extends StatefulWidget {
  const WidgetStateless({super.key});

  @override
  State<WidgetStateless> createState() => _WidgetStatelessState();
}

class _WidgetStatelessState extends State<WidgetStateless> {
  @override
  Widget build(BuildContext context) {
    return ContohStatelessWidget();
  }
}

// ContohStatelessWidget adalah StatelessWidget yang menampilkan UI utama aplikasi.
class ContohStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget Text untuk menampilkan teks
            const Text(
              'Hai, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Memberikan jarak antara widget
            // Widget Icon untuk menampilkan ikon
            const Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
            const SizedBox(height: 20),
            // Widget ElevatedButton untuk menampilkan tombol
            ElevatedButton(
              onPressed: () {
                // Aksi yang dilakukan ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tombol Diklik!')),
                );
              },
              child: const Text('Tekan Aku'),
            ),
          ],
        ),
      ),
    );
  }
}
