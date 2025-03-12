import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({super.key});

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListTile')),
        body: ListView(
          children: <Widget>[
            // Contoh 1: ListTile dengan judul dan subjudul
            ListTile(
              leading: const Icon(Icons.account_circle), // Ikon di sebelah kiri
              title: const Text('Kusmadi'), // Judul utama
              subtitle: const Text('mr.kusmadi@gmail.com'), // Subjudul
              trailing:
                  const Icon(Icons.arrow_forward), // Ikon di sebelah kanan
              onTap: () {
                // Aksi yang dilakukan saat ListTile ditekan
                print('Kusmadi diklik');
              },
            ),

            // Contoh 2: ListTile dengan ikon dan aksi
            ListTile(
              leading: const Icon(Icons.settings), // Ikon di sebelah kiri
              title: const Text('Pengaturan'), // Judul utama
              onTap: () {
                // Aksi yang dilakukan saat ListTile ditekan
                print('Pengaturan diklik');
              },
            ),

            // Contoh 3: ListTile dengan gambar sebagai leading
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/user1.png')), // Gambar profil
              title:
                  const Text('SmileCodes Teknologi Indonesia'), // Judul utama
              subtitle: const Text('admin@smilecodes.id'), // Subjudul
              trailing: IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Aksi yang dilakukan saat tombol pesan ditekan
                  print('Pesan ke SmileCodes Teknologi Indonesia');
                },
              ),
            ),

            // Contoh 4: ListTile dengan switch
            ListTile(
              leading: const Icon(Icons.notifications), // Ikon di sebelah kiri
              title: const Text('Notifikasi'), // Judul utama
              trailing: Switch(
                value: true, // Nilai switch
                onChanged: (bool value) {
                  // Aksi yang dilakukan saat switch diubah
                  print('Notifikasi diubah ke $value');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
