import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_ui/features/detail/pages/detail_page.dart';

class RecommendedBatiksHome extends StatefulWidget {
  const RecommendedBatiksHome({super.key, required this.category});

  final String category;

  @override
  State<RecommendedBatiksHome> createState() => _RecommendedBatiksHomeState();
}

class _RecommendedBatiksHomeState extends State<RecommendedBatiksHome> {
  final List<Map<String, dynamic>> _allBatiks = [
    {
      'nama': 'Batik Lukis Jogja',
      'harga': 170000,
      'rating': 4.9,
      'image': 'assets/images/batik/sragen1.jpg',
      'kategori': 'Batik Jogja',
    },
    {
      'nama': 'Batik Cap Jogja',
      'harga': 175000,
      'rating': 4.5,
      'image': 'assets/images/batik/capjogja.jpg',
      'kategori': 'Batik Jogja',
    },
    {
      'nama': 'Batik Solo 3 Negeri',
      'harga': 240000,
      'rating': 4.9,
      'image': 'assets/images/batik/solo3negeri.jpg',
      'kategori': 'Batik Solo',
    },
    {
      'nama': 'Batik Solo Laweyan',
      'harga': 210000,
      'rating': 4.5,
      'image': 'assets/images/batik/sololaweyan.jpg',
      'kategori': 'Batik Solo',
    },
  ];

  List<Map<String, dynamic>> get _filteredBatiks {
    if (widget.category == 'All') {
      return _allBatiks;
    } else {
      return _allBatiks
          .where((batik) => batik['kategori'] == widget.category)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _filteredBatiks.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (BuildContext context, int index) {
        final batik = _filteredBatiks[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(batik: batik),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(batik['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/love.svg',
                            width: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        batik['nama'],
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF4A4543),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Rp. ${batik['harga']}',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xFFEEA427),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${batik['rating']}',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFBBBBBB),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
