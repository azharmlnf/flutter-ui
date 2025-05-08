import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Row Example"),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 32, color: Colors.indigo),
            SizedBox(width: 10),
            Icon(Icons.favorite, color: Colors.red, size: 36),
          ],
        ),
      ),
    );
  }
}
