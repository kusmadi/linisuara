import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          // onTap: Aksi yang akan dilakukan ketika widget diklik
          onTap: () {
            // Menampilkan snackbar ketika widget diklik
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('InkWell diklik')),
            );
          },

          // onDoubleTap: Aksi yang akan dilakukan ketika widget diklik dua kali
          onDoubleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('InkWell diklik 2x')),
            );
          },

          // onLongPress: Aksi yang akan dilakukan ketika widget ditekan lama
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('InkWell diklik lama')));
          },

          // splashColor: Warna efek ripple ketika widget diklik
          splashColor: Colors.blue,

          // highlightColor: Warna highlight ketika widget diklik
          highlightColor: Colors.blue.withOpacity(0.5),

          // borderRadius: Membuat sudut InkWell menjadi melengkung
          borderRadius: BorderRadius.circular(10.0),

          // child: Widget yang akan menjadi anak dari InkWell
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text('Klik Saya',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ),
        ),
      ),
    );
  }
}
