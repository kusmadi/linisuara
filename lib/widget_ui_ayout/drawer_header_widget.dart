import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatefulWidget {
  const DrawerHeaderWidget({super.key});

  @override
  State<DrawerHeaderWidget> createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DrawerHeader')),
        // Menambahkan Drawer ke Scaffold
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Menggunakan DrawerHeader sebagai header dari Drawer
              DrawerHeader(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.lightBlueAccent,
                  Colors.green
                ])), // Warna latar belakang header
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Menambahkan ikon atau gambar di header
                    Image.asset("assets/images/logo.png", width: 48),
                    const SizedBox(height: 10.0), // Spasi antara ikon dan teks
                    // Menambahkan teks di header
                    const Text(
                      'Linisuara', // Nama pengguna
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    const Text(
                      'info@linisuara.com', // Email pengguna
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              // Menambahkan item-item menu di Drawer
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Aksi ketika item Home diklik
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Aksi ketika item Settings diklik
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {
                  // Aksi ketika item Help diklik
                },
              ),
            ],
          ),
        ),
        body: const Center(child: Text('Selamat datang di aplikasi Flutter!')),
      ),
    );
  }
}
