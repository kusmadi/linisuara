import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar: Bagian atas aplikasi yang biasanya berisi judul dan action buttons
      appBar: AppBar(
        title: const Text('Scaffold'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Aksi ketika tombol search ditekan
            },
          ),
        ],
      ),

      // Drawer: Menu samping yang bisa diakses dengan menggeser dari kiri atau melalui tombol di AppBar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Aksi ketika item 1 dipilih
                Navigator.pop(context); // Tutup drawer
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Aksi ketika item 2 dipilih
                Navigator.pop(context); // Tutup drawer
              },
            ),
          ],
        ),
      ),

      // Body: Bagian utama dari aplikasi, di sini kita bisa menempatkan konten utama
      body: const Center(
          child: Text('Hai, Aku Scaffold!', style: TextStyle(fontSize: 24))),

      // FloatingActionButton: Tombol aksi yang melayang di atas konten
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Aksi ketika FAB ditekan
          },
          child: const Icon(Icons.add)),

      // BottomNavigationBar: Navigasi di bagian bawah aplikasi
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: 0, // Indeks item yang aktif
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          // Aksi ketika item bottom navigation ditekan
        },
      ),
    );
  }
}
