import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox Contoh"),
      ),
      body: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  isChecked = value;
                  print("setuju: $isChecked");
                }
              });
            },
          ),
          const SizedBox(width: 4),
          const Text(
            "Setuju syarat dan ketentuan.",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}