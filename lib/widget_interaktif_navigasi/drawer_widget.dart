import 'package:flutter/material.dart';
import 'package:linisuara/widget_dasar/text_widget.dart';
import 'package:linisuara/widget_interaktif_navigasi/appbar_widget.dart';
import 'package:linisuara/widget_interaktif_navigasi/bottom_navigation_bar_widget.dart';
import 'package:linisuara/widget_interaktif_navigasi/button_widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Drawer')),
      // Drawer widget diletakkan di dalam Scaffold
      drawer: Drawer(
        child: ListView(
          // Penting: Hilangkan padding dari ListView untuk menghindari overflow
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader adalah bagian atas dari Drawer yang biasanya berisi informasi pengguna atau logo
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu Utama',
                    style: TextStyle(color: Colors.white, fontSize: 24))),
            // ListTile digunakan untuk membuat item menu di dalam Drawer
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('AppBar Widget'),
              onTap: () {
                // Navigasi ke halaman Pengaturan
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AppbarWidget()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.assistant_navigation),
              title: const Text('Bottom Navigation Bar'),
              onTap: () {
                // Navigasi ke halaman Profil
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavigationBarWidget()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.smart_button),
              title: const Text('Button Widget'),
              onTap: () {
                // Navigasi ke halaman Beranda
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ButtonWidget()));
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Selamat datang di Beranda!')),
    );
  }
}
