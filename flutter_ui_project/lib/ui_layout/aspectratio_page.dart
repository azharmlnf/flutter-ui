import 'package:flutter/material.dart';

class AspectratioPage extends StatelessWidget {
  const AspectratioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aspect Ratio Contoh')),
      body: const AspectRatio(
        aspectRatio: 180 / 360,
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.yellow)),
      ),
    );
  }
}
