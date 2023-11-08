import 'package:flutter/material.dart';
import 'package:sample_project/components/custom_widget.dart';
import 'package:sample_project/global_variables.dart';
import 'package:sample_project/components/product_card.dart';

class CartHomePage extends StatelessWidget {
  const CartHomePage({super.key});

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
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    image: product['imageMain'] as String,
                    title: product['title'] as String,
                    price: product['price'] as String,
                  );
                })),
          )
        ]),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: 375,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navIcon(icon: const Icon(Icons.home_outlined)),
            navIcon(icon: const Icon(Icons.favorite_outline)),
            navIcon(icon: const Icon(Icons.shopping_bag_outlined)),
            navIcon(icon: const Icon(Icons.wallet_outlined)),
          ],
        ),
      ),
    );
  }
}
