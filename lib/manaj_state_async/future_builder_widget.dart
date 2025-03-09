import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  // Simulasikan sebuah Future yang akan mengambil data setelah 2 detik
  Future<String> _fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulasi delay
    return "Data berhasil diambil!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilder')),
      body: Center(
        child: FutureBuilder<String>(
          future: _fetchData(), // Future yang akan dijalankan
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            // snapshot berisi status dan data dari Future
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Jika Future masih berjalan, tampilkan loading indicator
            } else if (snapshot.hasError) {
              return Text(
                  'Error: ${snapshot.error}'); // Jika terjadi error, tampilkan pesan error
            } else if (snapshot.hasData) {
              // Jika data berhasil diambil, tampilkan data tersebut
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(snapshot.data!), // Menampilkan data
                  const SizedBox(height: 20),
                  Image.network(
                    'https://store.liniswara.com/frontend/assets/images/logo.png', // Contoh media dari URL
                    width: 150,
                    height: 150,
                  ),
                ],
              );
            } else {
              // Jika tidak ada data, tampilkan pesan default
              return const Text('Tidak ada data');
            }
          },
        ),
      ),
    );
  }
}
