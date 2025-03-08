import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  // Data yang akan ditampilkan dalam ListView
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: ListView.builder(
        itemCount: items.length, // Jumlah item dalam ListView
        // Fungsi yang akan membangun setiap item dalam ListView
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]), // Judul dari setiap item
            subtitle: Text(
                'Ini adalah subtitle untuk ${items[index]}'), // Subtitle (opsional)
            leading:
                const Icon(Icons.star), // Leading icon di sebelah kiri judul
            trailing: const Icon(
                Icons.arrow_forward), // Trailing icon di sebelah kanan judul
            // Aksi ketika item di-tap
            onTap: () {
              // Menampilkan snackbar ketika item di-tap
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Anda menekan ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
