import 'package:flutter/material.dart';

class OrderInfoColumn extends StatelessWidget {
  const OrderInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Info',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',
                style: TextStyle(
                  fontSize: 17,
                )),
            Text('\$190',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping cost',
                style: TextStyle(
                  fontSize: 17,
                )),
            Text('\$15',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
                style: TextStyle(
                  fontSize: 17,
                )),
            Text('\$205',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
