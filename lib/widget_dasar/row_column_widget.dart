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
    return Container(
      width: size.width,
      height: size.height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.purple.shade900,
        Colors.deepPurple,
        Colors.white.withGreen(150),
        Colors.pinkAccent
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 1 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 1 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 2 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 2 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 3 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 3 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 4 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 4 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 5 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 5 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 6 Baris 1",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
              Container(
                width: size.width / 2 - 30,
                height: 100,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 2)
                    ]),
                child: const Text(
                  "Kolom 6 Baris 2",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center, //tulisan ditampilkan rata tengah
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
