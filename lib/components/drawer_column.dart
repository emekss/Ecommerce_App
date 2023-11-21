import 'package:flutter/material.dart';

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          const Icon(
            Icons.shopify,
            size: 100,
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
                      Icon(
                        Icons.verified_rounded,
                        size: 15,
                        color: Colors.green,
                      )
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 215, 215, 215),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 30,
                width: 66,
                child: const Center(child: Text('3 orders')),
              )
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('S H O P'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('O R D E R'),
            onTap: () {
              Navigator.pushNamed(context, '/cartPage');
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
    );
  }
}
