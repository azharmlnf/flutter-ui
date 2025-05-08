import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Contoh')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: const Row(
          children: [
            Icon(Icons.arrow_back),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('List checklist', style: TextStyle(fontSize: 16)),
              ),
            ),Icon(Icons.check,color: Colors.yellow,)
          ],
        ),
      ),
    );
  }
}
