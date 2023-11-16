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
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/detailsPage');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
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
                customerName: 'Jenny Wilson',
                customerImage: AssetImage('assets/images/profile1.png'),
              ),
              ReviewColumn(
                customerName: 'Richard Ronalds',
                customerImage: AssetImage('assets/images/profile2.png'),
              ),
              ReviewColumn(
                customerName: 'Michael Jordan',
                customerImage: AssetImage('assets/images/profile3.png'),
              ),
              ReviewColumn(
                customerName: 'Samson Greg',
                customerImage: AssetImage('assets/images/profile4.png'),
              ),
              ReviewColumn(
                customerName: 'David Mark',
                customerImage: AssetImage('assets/images/profile2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
