import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({super.key});

  @override
  State<RowColumnWidget> createState() => _RowColumnWidgetState();
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    //membuat variable size untuk acuan ukuran lebar dan tinggi
    var size = MediaQuery.of(context).size;
    //Container membungkus Text
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kolom 1 Baris 1",
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
            ),
            Text(
              "Kolom 1 Baris 2",
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Kolom 2 Baris 1",
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
            ),
            Text(
              "Kolom 2 Baris 2",
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
            ),
          ],
        )
      ],
    );
  }
}
