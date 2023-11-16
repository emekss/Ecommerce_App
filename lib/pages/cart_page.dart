import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/models/product.dart';
import 'package:sample_project/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                MaterialButton(onPressed: () {
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
      body: Column(
        children: [
          //cart list

          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    // get individual cart item

                    final item = cart[index];

                    //return as a cart tile UI
                    return ListTile(
                      title: Text(item.title),
                      subtitle: Text(item.prices.toStringAsFixed(2)),
                      trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: const Icon(Icons.delete)),
                    );
                  }))
        ],
      ),
      bottomNavigationBar: const BottomNavbarButton(buttonLabel: 'Checkout'),
    );
  }
}
