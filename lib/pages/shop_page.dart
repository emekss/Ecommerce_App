import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/components/bottom_navbar.dart';
import 'package:sample_project/components/drawer_column.dart';

import 'package:sample_project/components/product_tile.dart';
import 'package:sample_project/models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ),
            ]),
        drawer: const Drawer(child: DrawerColumn()),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Hello',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Welcome to Laza.',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // search bar
                const SizedBox(
                  width: 330,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      labelText: 'Search...',
                    ),
                  ),
                ),

                //microphone
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff9775fa),
                  ),
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_none,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Brand',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ]),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/nike.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/puma.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/fila.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/adidas.png'),
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(height: 15),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ]),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    final product = products[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detailsPage');
                        },
                        child: ProductTile(product: product));
                  })),
            )
          ]),
        ),
        bottomNavigationBar: const CustomBottomNavbar());
  }
}
