import 'package:flutter/material.dart';
import 'package:sample_project/components/add_review_button.dart';
import 'package:sample_project/components/review_column.dart';
import 'package:sample_project/components/star_rating_widget.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '245 Reviews',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      StarRating(),
                    ],
                  ),
                  AddReviewButton()
                ],
              ),
            ),
            ReviewColumn(
              name: 'Jenny Wilson',
              image: Image.asset('assets/images/profile1.png'),
            ),
            ReviewColumn(
              image: Image.asset('assets/images/profile2.png'),
              name: 'Ronald Richards',
            ),
            ReviewColumn(
              image: Image.asset('assets/images/profile3.png'),
              name: 'David Bigfoot',
            ),
            ReviewColumn(
              image: Image.asset('assets/images/profile4.png'),
              name: 'Justin Timberlake',
            ),
            ReviewColumn(
              image: Image.asset('assets/images/profile2.png'),
              name: 'James Collins',
            ),
            ReviewColumn(
              image: Image.asset('assets/images/profile3.png'),
              name: 'James Darwin',
            ),
          ],
        ),
      ),
    );
  }
}
