import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';

import '../components/custom_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool status = false;

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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Welcome to Laza Store...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/images/logo.png',
                color: const Color(0xff9775fa),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              customTextField(title: 'Username'),
              const SizedBox(height: 12),
              customTextField(title: 'Password'),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Remember Me',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                FlutterSwitch(
                    activeColor: Colors.green,
                    width: 70.0,
                    height: 30.0,
                    valueFontSize: 15.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    })
              ]),
            ],
          ),
        ),
        const Row(
          children: [
            Text(
                'By connecting your account confirm that you agree \n with our'),
            Text(
              'Terms and Conditions',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ]),
      bottomNavigationBar: const BottomNavbarButton(buttonLabel: 'Sign in'),
    );
  }
}
