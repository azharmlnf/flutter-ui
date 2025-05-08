import 'package:figma_ui/features/detail/widgets/app_bar_detail.dart';
import 'package:figma_ui/features/detail/widgets/container_detail.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> batik;

  const DetailPage({super.key, required this.batik});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              batik['image'],
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          Positioned(
            top: 48,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const AppBarDetail(),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: ContainerDetail(
              nama: batik['nama'],
              harga: batik['harga'],
              rating: batik['rating'],
            ),
          ),
        ],
      ),
    );
  }
}
