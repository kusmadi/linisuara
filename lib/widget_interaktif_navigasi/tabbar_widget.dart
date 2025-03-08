import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TabBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3, // Jumlah tab
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar dan TabBarView'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Kas'), // Tab pertama
                Tab(icon: Icon(Icons.business), text: 'Laporan'), // Tab kedua
                Tab(icon: Icon(Icons.school), text: 'Chat'), // Tab ketiga
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              // Konten untuk tab pertama
              Center(child: Text('Bayar Kas')),
              // Konten untuk tab kedua
              Center(child: Text('Laporan Keuangan')),
              // Konten untuk tab ketiga
              Center(child: Text('Forum Diskusi')),
            ],
          ),
        ),
      ),
    );
  }
}
