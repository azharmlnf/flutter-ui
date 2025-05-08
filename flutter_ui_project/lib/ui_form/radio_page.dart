import 'package:flutter/material.dart ';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String kelamin = "pria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Contoh"),
      ),
      body: Row(
        children: [
          const Text("Jenis Kelamin: "),
          const SizedBox(width: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 'pria',
                groupValue: kelamin,
                onChanged: (value) {
                  setState(() {
                    if (value != null) {
                      kelamin = value;
                      print("kelamin: $kelamin");
                    }
                  });
                },
              ),
              const Text("Pria"),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: "wanita",
                groupValue: kelamin,
                onChanged: (value) {
                  setState(() {
                    if (value != null) {
                      kelamin = value;
                      print("kelamin: $kelamin");
                    }
                  });
                },
              ),
              const Text("Wanita"),
            ],
          ),
        ],
      ),
    );
  }
}