import 'package:flutter/material.dart';

// TextField Example
class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField contoh"),
      ),
      body: Center(
        child: TextField(
          maxLength: 10,
          controller: textController,
          decoration: const InputDecoration(
            labelText: "Nama",
            labelStyle: TextStyle(color: Colors.blueGrey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            helperText: "Masukkan nama",
          ),
          onChanged: (value) {
            print(value);
          },
        ),
      ),
    );
  }
}
