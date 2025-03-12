import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Contoh 1: Padding di semua sisi
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(color: Colors.red, width: 100, height: 100),
              ),
              const SizedBox(height: 20), // Memberikan jarak antara contoh

              // Contoh 2: Padding simetris (vertikal dan horizontal)
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: Container(color: Colors.green, width: 150, height: 80),
              ),
              const SizedBox(height: 20),

              // Contoh 3: Padding hanya di sisi tertentu
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 10.0),
                child: Container(color: Colors.blue, width: 120, height: 120),
              ),
              const SizedBox(height: 20),

              // Contoh 4: Padding dengan nilai berbeda di setiap sisi
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
                child: Container(color: Colors.orange, width: 200, height: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
