import 'package:flutter/material.dart';

class CustomPaintWidget extends StatefulWidget {
  const CustomPaintWidget({super.key});

  @override
  State<CustomPaintWidget> createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('CustomPaint')),
        body: Center(
            child: CustomPaint(
                size: const Size(300, 300), // Ukuran canvas
                painter:
                    MyPainter()) // Custom painter yang akan menggambar pada canvas

            ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Menggambar latar belakang
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawRect(Offset.zero & size, paint);

    // Menggambar lingkaran
    final circlePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 4;

    canvas.drawCircle(center, radius, circlePaint);

    // Menggambar teks
    final textPainter = TextPainter(
        text: const TextSpan(
            text: 'Belajar Flutter!',
            style: TextStyle(color: Colors.white, fontSize: 24)),
        textDirection: TextDirection.ltr);

    textPainter.layout();
    textPainter.paint(canvas, const Offset(50, 50));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // Mengembalikan false karena kita tidak perlu repaint kecuali ada perubahan
    return false;
  }
}
