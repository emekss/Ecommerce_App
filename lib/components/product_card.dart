// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;

  const ProductCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'detailsPage');
      },
      child: Image.asset(
        image,
        height: 257,
        width: 200,
      ),
    );
  }
}
