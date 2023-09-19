// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset(image, height: 120, width: 160),
            Positioned(
              right: -9,
              child: IconButton(
                alignment: Alignment.topRight,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 25,
                ),
              ),
            ),
          ]),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 5),
          Text(
            '$price',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
