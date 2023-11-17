import 'package:flutter/material.dart';

class PaymentMethodColumn extends StatelessWidget {
  const PaymentMethodColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Payment Method',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded))
        ]),
        Row(
          children: [
            Image.asset('assets/images/visa.png'),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Visa Classic',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(height: 10),
                Text(
                  '**** 7690',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(width: 187),
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 35,
            ),
          ],
        )
      ],
    );
  }
}
