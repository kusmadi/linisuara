import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //Stack digunakan untuk menampilkan widget bertumpuk
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: size.width,
          height: 200,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(140))),
        ),
        Positioned(
            right: 10,
            top: 100,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(140)),
            )),
        Positioned(
            right: 20,
            top: 110,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 0),
                        blurRadius: 3,
                        spreadRadius: 3)
                  ]),
            )),
        const Positioned(
          left: 20,
          top: 130,
          child: Text('Belajar Flutter\nLinisuara',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
