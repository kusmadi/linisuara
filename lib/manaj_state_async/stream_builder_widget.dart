import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  // Membuat sebuah StreamController untuk mengontrol aliran data
  final StreamController<int> _streamController = StreamController<int>();

  // Variabel untuk menyimpan data yang akan dikirim ke Stream
  int _counter = 0;

  // Method untuk menambahkan data ke Stream
  void _incrementCounter() {
    _counter++;
    _streamController.add(_counter); // Mengirim data ke Stream
  }

  @override
  void dispose() {
    // Menutup StreamController ketika widget di-dispose untuk menghindari memory leak
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamBuilder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter Value:'),
            // Menggunakan StreamBuilder untuk mendengarkan Stream dan membangun UI
            StreamBuilder<int>(
              stream: _streamController.stream, // Stream yang akan didengarkan
              initialData: 0, // Data awal sebelum Stream mengirim data
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                // snapshot berisi data yang diterima dari Stream
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Jika Stream sedang menunggu data
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  // Jika terjadi error pada Stream
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Jika data berhasil diterima, tampilkan data tersebut
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            _incrementCounter, // Memanggil method untuk menambahkan data ke Stream
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
