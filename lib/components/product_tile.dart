// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:sample_project/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 257,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //producy image
          Image.asset(
            product.imageUrl,
            height: 160,
            width: 200,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                product.prices.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
