import 'package:flutter/material.dart';
import 'package:sample_project/pages/add_address_page.dart';
import 'package:sample_project/pages/add_review_page.dart';
import 'package:sample_project/pages/payment_page.dart';
import 'package:sample_project/pages/product_page.dart';

import 'package:sample_project/pages/details_page.dart';
import 'package:sample_project/pages/create_account_page.dart';
import 'package:sample_project/pages/home_page.dart';
import 'package:sample_project/pages/reviews_page.dart';

import 'package:sample_project/pages/sign_up_page.dart';
import 'package:sample_project/pages/sign_in_page.dart';

void main() => runApp(const SampleProject());

class SampleProject extends StatelessWidget {
  const SampleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PaymentPage(),
      routes: {
        'createAcountPage': (context) => const CreateAccountPage(),
        'signUpPage': (context) => const SignUpPage(),
        'signInPage': (context) => const SignInPage(),
        'productPage': (context) => const ProductPage(),
        'detailsPage': (context) => const DetailsPage(),
        'addReviewPage': (context) => const AddReviewPage(),
        'reviewPage': (context) => const ReviewPage(),
      },
    );
  }
}
