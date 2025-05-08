import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Contoh')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 20,
          runSpacing: 10,
          children: List.generate(20, (index) {
            return Container(
              width: 50,
              height: 50,
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }),
        ),
      ),
    );
  }
}
