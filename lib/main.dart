import 'package:flutter/material.dart';
import 'package:sample_project/pages/add_review_page.dart';
import 'package:sample_project/pages/cart_home_page.dart';

import 'package:sample_project/pages/details_page.dart';
import 'package:sample_project/pages/get_started_page.dart';
import 'package:sample_project/pages/home_page.dart';
import 'package:sample_project/pages/reviews_page.dart';

import 'package:sample_project/pages/sign_up_page.dart';
import 'package:sample_project/pages/welcome_page.dart';

void main() => runApp(const SampleProject());

class SampleProject extends StatelessWidget {
  const SampleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ReviewPage(),
      routes: {
        'getStartedPage': (context) => const GetStartedPage(),
        'signUpPage': (context) => const SignUpPage(),
        'welcomePage': (context) => const WelcomePage(),
        'cartHomePage': (context) => const CartHomePage(),
        'detailsPage': (context) => const DetailsPage(),
        'addReviewPage': (context) => const AddReviewPage(),
        'reviewPage': (context) => const ReviewPage(),
      },
    );
  }
}
