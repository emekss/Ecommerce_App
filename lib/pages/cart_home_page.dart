import 'package:flutter/material.dart';

import 'package:sample_project/global_variables.dart';
import 'package:sample_project/product_card.dart';

class CartHomePage extends StatefulWidget {
  const CartHomePage({super.key});

  @override
  State<CartHomePage> createState() => _CartHomePageState();
}

class _CartHomePageState extends State<CartHomePage> {
  final List<String> filters = const [
    'Real Madrid',
    'Ac Milan',
    'Arsenal',
    'Manchester United',
    'Liverpool',
    'Manchester City',
  ];

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
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/ronaldo1.jpg'),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Emeka Kennedy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'Verified Profile',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Icon(Icons.verified_rounded, size: 15)
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 66,
                    color: const Color.fromARGB(255, 215, 215, 215),
                    child: const Center(child: Text('3 orders')),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('H O M E'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'cartHomePage');
                },
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('P R O F I L E'),
              ),
              ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text('O R D E R'),
                onTap: () {
                  Navigator.pushNamed(context, 'detailsPage');
                },
              ),
              const ListTile(
                leading: Icon(Icons.favorite),
                title: Text('W I S H L I S T'),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
              ),
              const SizedBox(height: 150),
              const ListTile(
                iconColor: Colors.red,
                textColor: Colors.red,
                leading: Icon(Icons.logout),
                title: Text('L O G O U T'),
              ),
            ],
          ),
        ),
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
                  width: 300,
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
                  height: 50,
                  width: 50,
                  color: const Color(0xff9775fa),
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
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Chip(
                      backgroundColor: const Color(0xffF5F6FA),
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text(filter),
                      labelStyle: const TextStyle(fontSize: 17),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                  );
                },
              ),
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
                      title: product['title'] as String,
                      price: product['price'] as String,
                    );
                  })),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.black,
            ),
            label: '',
          )
        ]));
  }
}
