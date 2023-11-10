import 'package:flutter/material.dart';

class BottomNavbarButton extends StatelessWidget {
  final String buttonLabel;
  const BottomNavbarButton({super.key, required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      color: const Color(0xff9775fa),
      child: Center(
        child: Text(
          buttonLabel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
