import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  String selectedValue = 'Pilihan 1'; //dipakai DropdownButton

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Aksi yang akan dilakukan ketika tombol ditekan
            print('FloatingActionButton ditekan!');
          },
          child: const Icon(Icons.add), // Ikon yang ditampilkan pada tombol
        ),
        appBar: AppBar(
          title: const Text('Linisuara'), // Judul yang ditampilkan di AppBar
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Aksi yang akan dilakukan ketika tombol ditekan
                    print('ElevatedButton ditekan!');
                  }, // Teks yang ditampilkan pada tombol
                  child: const Text('Elevated Button')),
              TextButton(
                  onPressed: () {
                    // Aksi yang akan dilakukan ketika tombol ditekan
                    print('TextButton ditekan!');
                  }, // Teks yang ditampilkan pada tombol
                  child: const Text('Text Button')),
              OutlinedButton(
                onPressed: () {
                  // Aksi yang akan dilakukan ketika tombol ditekan
                  print('OutlinedButton ditekan!');
                }, // Teks yang ditampilkan pada tombol
                child: const Text('Outlined Button'),
              ),
              IconButton(
                onPressed: () {
                  // Aksi yang akan dilakukan ketika tombol ditekan
                  print('IconButton ditekan!');
                }, // Ikon yang ditampilkan pada tombol
                icon: const Icon(Icons.thumb_up),
              ),
              GestureDetector(
                onTap: () {
                  // Aksi yang akan dilakukan ketika area yang dideteksi ditekan
                  print('Custom Button ditekan!');
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text('Custom Button',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              DropdownButton<String>(
                value: selectedValue,
                onChanged: (String? newValue) {
                  // Aksi yang akan dilakukan ketika nilai dropdown berubah
                  setState(() {
                    selectedValue = newValue!;
                  });
                  print('DropdownButton dipilih: $newValue');
                },
                items: <String>['Pilihan 1', 'Pilihan 2', 'Pilihan 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ]),
      ),
    );
  }
}
