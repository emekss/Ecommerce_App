import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  double _userRating = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$_userRating',
          style: const TextStyle(fontSize: 16),
        ),
        RatingBar.builder(
          itemSize: 20,
          maxRating: 5,
          initialRating: _userRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _userRating = rating;
            });
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
