import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Hero Screen')),
        body: Center(
          child: InkWell(
              onTap: () {
                // Navigasi ke SecondScreen ketika gambar diklik
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return LinisuaraScreen();
                }));
              },
              child: Hero(
                tag: 'imageHero', // Tag yang sama digunakan di kedua layar
                child: Image.network(
                  'https://store.liniswara.com/frontend/assets/images/logo.png', // URL gambar
                  width: 100,
                  height: 100,
                ),
              )),
        ));
  }
}

class LinisuaraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Linisuara Screen')),
      body: Center(
        child: Hero(
          tag: 'imageHero', // Tag yang sama digunakan di kedua layar
          child: Image.network(
            'https://linktr.ee/og/image/liniswara.jpg', // URL gambar yang sama
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
