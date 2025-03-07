import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    //Container membungkus Text
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.deepPurple,
      child: const Text(
        'Belajar Flutter',
        style: TextStyle(fontSize: 24, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
