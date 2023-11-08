import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
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
      ],
    );
  }
}
