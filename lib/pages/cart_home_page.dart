import 'package:flutter/material.dart';
import 'package:sample_project/components/bottom_navbar.dart';
import 'package:sample_project/components/drawer_column.dart';
import 'package:sample_project/util/global_variables.dart';
import 'package:sample_project/components/product_card.dart';

class CartHomePage extends StatefulWidget {
  const CartHomePage({super.key});

  @override
  State<CartHomePage> createState() => _CartHomePageState();
}

class _CartHomePageState extends State<CartHomePage> {
  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(16.0),
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
              'Welcome to PKC Shop.',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            const SizedBox(height: 10),
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
            Container(
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
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
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
            Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    final product = products[index];
                    return ProductCard(
                      image: product['imageUrl'] as String,
                    );
                  })),
            )
          ]),
        ),
        bottomNavigationBar: const CustomBottomNavbar());
  }
}
