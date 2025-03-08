import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    //membuat variable size untuk acuan ukuran lebar dan tinggi
    var size = MediaQuery.of(context).size;
    //Container membungkus Text
    return Container(
      width: size.width, //atur lebar container selebar layar hp
      height: size.height, //atur tinngi container selebar layar hp
      //buat jarak dari tepi ke widget text 16 piksel
      padding: const EdgeInsets.all(16),
      //widget didalam container ditampilkan rata tengah
      alignment: Alignment.center,
      decoration: BoxDecoration(
          //buat latarbelakang ungu tua dan pink dari atas kiri ke bawah kanan
          gradient: LinearGradient(
              colors: [Colors.purple.shade900, Colors.purple, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Text(
        //widget text terbungkus container
        'Belajar Flutter',
        style: TextStyle(fontSize: 24, color: Colors.white),
        textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
      ),
    );
  }
}
