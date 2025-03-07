import 'package:flutter/material.dart';
//Tambahkan text_widget
import 'package:linisuara/widget_dasar/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linisuara',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //Ganti kode MyHomePage() menjadi TextWidget()
      home: const ContainerWidget(),
    );
  }
}
