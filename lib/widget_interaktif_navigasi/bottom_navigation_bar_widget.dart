import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0; // Indeks item yang sedang aktif
  String transactionString = '';

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    HomePage(),
    ProductPage(),
    TransactionPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Bottom Navigation Bar'), // Judul yang ditampilkan di AppBar
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Aksi yang akan dilakukan ketika item menu dipilih
              print('PopupMenuButton dipilih: $value');
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                    value: 'Item 1', child: Text('Item 1')),
                const PopupMenuItem<String>(
                    value: 'Item 2', child: Text('Item 2')),
              ];
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {
          // Aksi yang akan dilakukan ketika tombol ditekan
          setState(() {
            _currentIndex = 2; // Mengubah indeks saat item ditekan
            transactionString = "\nTransaksi";
          });
        },
        child: const Icon(
          Icons.currency_bitcoin,
          color: Colors.white,
        ), // Ikon yang ditampilkan pada tombol
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: _pages[_currentIndex], // Menampilkan halaman berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indeks item yang sedang aktif
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah indeks saat item ditekan
          });
        },
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Dashboard'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Produk'),
          BottomNavigationBarItem(
              icon: const Center(), label: transactionString),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifikasi'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profil'),
        ],
        selectedItemColor: Colors.blue, // Warna item yang dipilih
        unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
        iconSize: 30.0, // Ukuran ikon
      ),
    );
  }
}

// Contoh halaman-halaman yang akan ditampilkan
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: const Center(
            child: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )));
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: const Center(
            child: Text(
          'Produk',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )));
  }
}

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.brown,
        child: const Center(
            child: Text(
          'Transaksi',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )));
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepOrange,
        child: const Center(
            child: Text(
          'Notifikasi',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.cyan,
        child: const Center(
            child: Text(
          'Profil',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )));
  }
}
