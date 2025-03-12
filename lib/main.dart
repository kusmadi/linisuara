import 'package:flutter/material.dart';
import 'package:linisuara/widget_interaktif_navigasi/modal_bottom_sheet_widget.dart';
import 'package:linisuara/widget_ui_ayout/icon_widget.dart';

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
      home: const ModalBottomSheetWidget(),
    );
  }
}
