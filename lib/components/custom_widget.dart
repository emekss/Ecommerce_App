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

Widget catLogo({
  required String logoTitle,
  required Image image,
}) {
  return Card(
    child: Card(
      elevation: 6,
      child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [Text(logoTitle)],
          )),
    ),
  );
}

Widget navIcon({
  required Icon icon,
}) {
  return IconButton(
    iconSize: 30,
    onPressed: () {},
    icon: icon,
  );
}

Widget productLabel({
  required String label,
}) {
  return Text(
    label,
    style: const TextStyle(
      fontSize: 14,
      color: Color(0xFF8F959E),
    ),
  );
}

// Widget sizeButton({
//   required String label,
// }) {
//   return Padding(
//     padding: const EdgeInsets.all(6.0),
//     child: ElevatedButton(
//       style: const ButtonStyle(
//         backgroundColor: MaterialStatePropertyAll(
//           Color(0xFFF5F6FA),
//         ),
//       ),
//       onPressed: () {},
//       child: Text(
//         label,
//         style: const TextStyle(
//           color: Colors.black,
//           fontSize: 19,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   );
// }

Widget sizeButton({
  required String label,
}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF5F6FA),
      ),
      height: 60,
      width: 60,
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
