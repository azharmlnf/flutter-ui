import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  const GridviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Contoh')),
      body: SizedBox(
        height: 210,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.cyan,
              margin: const EdgeInsets.all(5),
              child: Center(child: Text((index + 1).toString())),
            );
          },
        ),
      ),
    );
  }
}
