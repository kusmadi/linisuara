import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({super.key});

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Kiri'),
        Spacer(), // Mengisi ruang antara 'Left' dan 'Right'
        Text('Kanan'),
      ],
    );
  }
}
