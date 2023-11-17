import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/components/delivery_address_colum.dart';
import 'package:sample_project/components/order_info_column.dart';
import 'package:sample_project/components/payment_method_column.dart';

import 'package:sample_project/models/product.dart';
import 'package:sample_project/models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
// Item  Counter
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

//remove item from cart
  void removeItemFromCart(BuildContext context, Product product) {
    //show dialog to confirm if user wants to delete item
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text('Remove this item from cart?'),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),

                //yes button
                MaterialButton(
                    child: const Text('yes'),
                    onPressed: () {
                      Navigator.pop(context);

                      //remove from cart
                      context.read<Shop>().removeFromCart(product);
                    })
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
//get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //cart list
            Container(
                height: 310,
                child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // get individual cart item

                      final item = cart[index];

                      //return as a cart tile UI
                      return Card(
                          elevation: 5,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              height: 140,
                              width: 335,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    Row(children: [
                                      SizedBox(
                                        height: 120,
                                        width: 100,
                                        child: Image.asset(item.imageUrl),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.title,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '\$${item.prices.toStringAsFixed(2)}',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(height: 10),
                                            const Text(
                                              '45(-4.00 Tax)',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                            ),
                                            Row(
                                              children: [
                                                IconButton(
                                                  icon: const Icon(Icons
                                                      .arrow_drop_down_outlined),
                                                  onPressed: _decrementCounter,
                                                  iconSize: 20.0,
                                                ),
                                                Text(
                                                  '$_counter',
                                                  style: const TextStyle(
                                                      fontSize: 20.0),
                                                ),
                                                IconButton(
                                                  icon: const Icon(Icons
                                                      .arrow_drop_up_outlined),
                                                  onPressed: _incrementCounter,
                                                  iconSize: 20.0,
                                                ),
                                                const SizedBox(width: 95),
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.white),
                                                  child: IconButton(
                                                      onPressed: () =>
                                                          removeItemFromCart(
                                                              context, item),
                                                      icon: const Icon(
                                                        Icons
                                                            .delete_outline_rounded,
                                                        color: Colors.black,
                                                      )),
                                                )
                                              ],
                                            ),
                                          ]),
                                    ])
                                  ]))));
                    })),
            const DeliveryAddressColumn(),
            const PaymentMethodColumn(),
            const OrderInfoColumn()
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/orderconfirmedPage');
          },
          child: const BottomNavbarButton(buttonLabel: 'Checkout')),
    );
  }
}
