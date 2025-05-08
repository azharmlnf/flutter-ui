import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Contoh")),
      body: SizedBox(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            SizedBox(
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            SizedBox(
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.yellow),
              ),
            ),
            SizedBox(
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),SizedBox(
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
