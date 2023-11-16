import 'package:flutter/material.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/addNewCardPage');
      },
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          color: Colors.purple[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_box_outlined,
              color: Colors.purple,
            ),
            Text(
              'Add new card',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
