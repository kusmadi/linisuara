import 'package:flutter/material.dart';

class WidgetStateful extends StatefulWidget {
  const WidgetStateful({super.key});

  @override
  State<WidgetStateful> createState() => _WidgetStatefulState();
}

class _WidgetStatefulState extends State<WidgetStateful> {
  int _counter = 0; // Variabel state untuk menyimpan jumlah klik.

  // Metode untuk menambah nilai _counter dan memperbarui UI.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Anda telah menekan tombol ini sebanyak:'),
            Text('$_counter', // Menampilkan nilai _counter.
                style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            _incrementCounter, // Memanggil _incrementCounter saat tombol ditekan.
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
