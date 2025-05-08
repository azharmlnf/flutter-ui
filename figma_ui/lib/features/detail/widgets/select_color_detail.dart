import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectColorDetail extends StatefulWidget {
  const SelectColorDetail({super.key});

  @override
  State<SelectColorDetail> createState() => _SelectColorDetailState();
}

class _SelectColorDetailState extends State<SelectColorDetail> {
  final List<Color> _colors = [
    const Color.fromARGB(255, 20, 19, 19),
    const Color.fromARGB(255, 215, 151, 39),
    const Color.fromARGB(255, 102, 100, 100),
    const Color.fromARGB(255, 137, 70, 3),
  ];

  int _selectedColor = 0;

  void onTapColor(int index) {
    setState(() {
      _selectedColor = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Choose a color",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7A8D9C),
          ),
        ),
        Row(
          children: _colors.asMap().entries.map((entry) {
            int index = entry.key;
            Color color = entry.value;

            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () => onTapColor(index),
                child: _selectedColor == index
                    ? CircleAvatar(
                        radius: 14,
                        backgroundColor: color,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: color,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 10,
                        backgroundColor: color,
                      ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
} 