import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({super.key});

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style, // Gaya teks default
        children: const [
          TextSpan(
            text: 'Hai, ', // Teks pertama
            style: TextStyle(
              color: Colors.black, // Warna teks hitam
              fontSize: 20.0, // Ukuran font 20
            ),
          ),
          TextSpan(
            text: 'SMK RPL!', // Teks kedua
            style: TextStyle(
              color: Colors.blue, // Warna teks biru
              fontSize: 24.0, // Ukuran font 24
              fontWeight: FontWeight.bold, // Tebal (bold)
            ),
          ),
          TextSpan(
            text: '\nIni adalah contoh ', // Teks ketiga
            style: TextStyle(
              color: Colors.green, // Warna teks hijau
              fontSize: 18.0, // Ukuran font 18
            ),
          ),
          TextSpan(
            text: 'RichText', // Teks keempat
            style: TextStyle(
              color: Colors.red, // Warna teks merah
              fontSize: 22.0, // Ukuran font 22
              fontStyle: FontStyle.italic, // Gaya miring (italic)
            ),
          ),
          TextSpan(
            text: ' di Flutter.', // Teks kelima
            style: TextStyle(
              color: Colors.purple, // Warna teks ungu
              fontSize: 18.0, // Ukuran font 18
            ),
          ),
        ],
      ),
    );
  }
}
