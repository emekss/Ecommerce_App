import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/models/shop.dart';

import 'package:sample_project/pages/add_new_card_page.dart';
import 'package:sample_project/pages/add_review_page.dart';
import 'package:sample_project/pages/cart_page.dart';
import 'package:sample_project/pages/home_page.dart';

import 'package:sample_project/pages/payment_page.dart';
import 'package:sample_project/pages/shop_page.dart';

import 'package:sample_project/pages/details_page.dart';
import 'package:sample_project/pages/create_account_page.dart';

import 'package:sample_project/pages/reviews_page.dart';

import 'package:sample_project/pages/sign_up_page.dart';
import 'package:sample_project/pages/sign_in_page.dart';

void main() => runApp(
      ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/createAcountPage': (context) => const CreateAccountPage(),
        '/signUpPage': (context) => const SignUpPage(),
        '/signInPage': (context) => const SignInPage(),
        '/detailsPage': (context) => const DetailsPage(),
        '/shopPage': (context) => const ShopPage(),
        '/addReviewPage': (context) => const AddReviewPage(),
        '/reviewPage': (context) => const ReviewPage(),
        '/addNewCardPage': (context) => const AddNewCardPage(),
        '/cartPage': (context) => const CartPage(),
      },
    );
  }
}
