import 'package:flutter/material.dart';

Widget customButton({
  required String title,
  required Color color,
  required IconData icon,
  required Function onTap,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: 22,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          )
        ]),
      ),
    ),
  );
}

Widget customTextField({
  required String title,
}) {
  return TextFormField(
    decoration: InputDecoration(
      border: const UnderlineInputBorder(),
      labelText: title,
    ),
  );
}
