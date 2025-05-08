import 'package:flutter/material.dart';

// DropdownButton Example
class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  String selected = "PHP";

  final List<String> dropDownList = const [
    "Dart",
    "Kotlin",
    "Java",
    "Javascript",
    "PHP",
    "Python",
    "Ruby",
    "Swift",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropdownButton contoh")),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Bahasa favorit: "),
          const SizedBox(width: 8),
          DropdownButton(
            value: selected,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 20,
            style: TextStyle(color: Colors.red[600]),
            underline: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 3),
                ),
              ),
            ),
            items:
                dropDownList.map((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
            onChanged: (val) {
              setState(() {
                if (val != null) selected = val;
                print(selected);
              });
            },
          ),
        ],
      ),
    );
  }
}
