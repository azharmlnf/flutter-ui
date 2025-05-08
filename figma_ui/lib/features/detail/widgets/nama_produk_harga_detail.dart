import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamaProdukHargaDetail extends StatelessWidget {
  final String nama;
  final int harga;
  final double rating;

  const NamaProdukHargaDetail({
    super.key,
    required this.nama,
    required this.harga,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nama,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Rp. $harga',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.brown,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 16),
            const SizedBox(width: 4),
            Text(
              '$rating',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
