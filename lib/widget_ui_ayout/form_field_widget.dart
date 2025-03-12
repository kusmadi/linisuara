import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {
  const FormFieldWidget({super.key});

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  // GlobalKey digunakan untuk mengidentifikasi form dan memvalidasi input
  final _formKey = GlobalKey<FormState>();

  // Variabel untuk menyimpan nilai input
  String _name = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Field")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Mengaitkan GlobalKey dengan Form
          child: Column(
            children: [
              // TextFormField untuk input nama
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),

              // TextFormField untuk input email
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  if (!value.contains('@')) {
                    return 'Email tidak valid';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),

              // TextFormField untuk input password
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true, // Menyembunyikan teks password
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  if (value.length < 6) {
                    return 'Password harus lebih dari 6 karakter';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),

              const SizedBox(height: 20), // Spasi antara input dan tombol

              // Tombol untuk submit form
              ElevatedButton(
                onPressed: () {
                  // Memvalidasi form
                  if (_formKey.currentState!.validate()) {
                    // Jika valid, simpan nilai input
                    _formKey.currentState!.save();

                    // Tampilkan nilai input dalam dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Data yang diinput'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nama: $_name'),
                              Text('Email: $_email'),
                              Text('Password: $_password'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
