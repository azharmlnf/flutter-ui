import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh Row')),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
            const Text(
              'Detail ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            IconButton(
              icon: const Icon(Icons.share , size: 30,),
              onPressed: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}
