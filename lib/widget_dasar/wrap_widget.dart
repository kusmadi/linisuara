import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Wrap Flutter")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
            spacing: 8.0, // Jarak antar widget dalam satu baris
            runSpacing: 4.0, // Jarak antar baris
            children: List.generate(
                36,
                (index) => Chip(
                    label: Text('Item ${index + 10}'),
                    backgroundColor: Colors.blue[100],
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('${index + 1}',
                            style: const TextStyle(color: Colors.white)))))),
      ),
    );
  }
}
