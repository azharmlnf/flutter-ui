import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Contoh')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Tambah Ke Keranjang'),
        ),
      ),
    );
  }
}
