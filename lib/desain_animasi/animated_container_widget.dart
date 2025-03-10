import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  // Variabel untuk mengontrol properti dari AnimatedContainer
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  // Method untuk mengubah properti AnimatedContainer
  void _changeContainer() {
    setState(() {
      // Mengubah nilai properti secara acak
      _width = _width == 100.0 ? 200.0 : 100.0;
      _height = _height == 100.0 ? 200.0 : 100.0;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8.0)
          ? BorderRadius.circular(50.0)
          : BorderRadius.circular(8.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // AnimatedContainer akan meng-animasi perubahan properti
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1), // Durasi animasi
              curve: Curves.fastOutSlowIn, // Kurva animasi
            ),
            const SizedBox(height: 20), // Spasi antara container dan tombol
            ElevatedButton(
              onPressed:
                  _changeContainer, // Memanggil method untuk mengubah properti
              child: const Text('Animate Container'),
            ),
          ],
        ),
      ),
    );
  }
}
