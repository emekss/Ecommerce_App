import 'package:flutter/material.dart';

class DeliveryAddressColumn extends StatelessWidget {
  const DeliveryAddressColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Delivery Address',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addAddressPage');
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded))
        ]),
        Row(
          children: [
            Image.asset('assets/images/address.png'),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No. 10 Wuse, Abuja, Nigeria',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(height: 10),
                Text(
                  'CentralArea',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(width: 45),
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
