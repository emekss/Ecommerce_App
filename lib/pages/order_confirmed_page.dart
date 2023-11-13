import 'package:flutter/material.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';

class OrderConfirmedPage extends StatelessWidget {
  const OrderConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Column(
                children: [
                  Image.asset('assets/images/order.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Order Confirmed!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Your order has been confirmed, we will send you confirmation email shortly',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(height: 220),
            Container(
              height: 50,
              width: 335,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Go to Orders',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          const BottomNavbarButton(buttonLabel: 'Continue Shopping'),
    );
  }
}
