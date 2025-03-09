import 'package:flutter/material.dart';

class Stateless extends StatefulWidget {
  const Stateless({super.key});

  @override
  State<Stateless> createState() => _StatelessState();
}

class _StatelessState extends State<Stateless> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

// MyHomePage adalah StatelessWidget yang menampilkan UI utama aplikasi.
class MyHomePage extends Stateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Widget Text untuk menampilkan teks
            Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Memberikan jarak antara widget
            // Widget Icon untuk menampilkan ikon
            Icon(
              Icons.flutter_dash,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            // Widget ElevatedButton untuk menampilkan tombol
            ElevatedButton(
              onPressed: () {
                // Aksi yang dilakukan ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
