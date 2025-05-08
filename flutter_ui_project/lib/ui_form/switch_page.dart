import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Example"),
      ),
      body: Row(
        children: [
          const Text("Connect Instagram"),
          Switch(
            value: isOn,
            onChanged: (bool? val) {
              if (val != null) {
                setState(() {
                  isOn = val;
                  print("Switch: $isOn");
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
