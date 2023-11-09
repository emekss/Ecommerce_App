import 'package:flutter/material.dart';

class AddReviewButton extends StatelessWidget {
  const AddReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 118,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber[700],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.white,
          ),
          Text(
            'Add Review',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
