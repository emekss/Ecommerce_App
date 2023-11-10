import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/components/custom_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Let\'s Get Started',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Column(children: [
          customButton(
            title: 'Facebook',
            color: const Color(0xff4267B2),
            icon: FontAwesomeIcons.facebook,
            onTap: () {},
            context: context,
          ),
          const SizedBox(height: 6),
          customButton(
            title: 'Twitter',
            color: const Color(0xff1DA1F2),
            icon: FontAwesomeIcons.twitter,
            onTap: () {},
            context: context,
          ),
          const SizedBox(height: 6),
          customButton(
            title: 'Google',
            color: const Color(0xffEA4335),
            icon: FontAwesomeIcons.google,
            onTap: () {},
            context: context,
          )
        ]),
        Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'signUpPage');
            },
            child: RichText(
              text: const TextSpan(
                text: 'Already have an Account? ',
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ])
      ]),
      bottomNavigationBar:
          const BottomNavbarButton(buttonLabel: 'Create an Account'),
    );
  }
}
