import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    //Ganti kode Placeholder() menjadi Text("Belajar Flutter")
    return const Text(
      'Belajar Flutter',
      style: TextStyle(fontSize: 24, color: Colors.blue),
      textAlign: TextAlign.center,
    );
  }
}
