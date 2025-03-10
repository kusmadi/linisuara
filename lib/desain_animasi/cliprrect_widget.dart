import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  const ClipRRectWidget({super.key});

  @override
  State<ClipRRectWidget> createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ClipRRect')),
        body: Center(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                  30.0), // Sudut kiri atas melengkung dengan radius 30.0
              bottomRight: Radius.circular(
                  30.0), // Sudut kanan bawah melengkung dengan radius 30.0
            ),
            child: Container(
              width: 200.0, // Lebar container
              height: 200.0, // Tinggi container
              color: Colors.blue, // Warna background container
              child: const Center(
                child: Text(
                  'Belajar ClipRRect!',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
