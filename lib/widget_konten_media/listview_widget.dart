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
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        // Jumlah item dalam ListView
        itemCount: items.length,
        // Fungsi yang akan membangun setiap item dalam ListView
        itemBuilder: (context, index) {
          return ListTile(
            // Judul dari setiap item
            title: Text(items[index]),
            // Subtitle (opsional)
            subtitle: Text('Ini adalah subtitle untuk ${items[index]}'),
            // Leading icon di sebelah kiri judul
            leading: Icon(Icons.star),
            // Trailing icon di sebelah kanan judul
            trailing: Icon(Icons.arrow_forward),
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
