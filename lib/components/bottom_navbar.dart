import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff9775fa),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
            gap: 8,
            backgroundColor: Color(0xff9775fa),
            color: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_outline_rounded,
                text: 'Wishlist',
              ),
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.wallet_outlined,
                text: 'Wallet',
              )
            ]),
      ),
    );
  }
}
