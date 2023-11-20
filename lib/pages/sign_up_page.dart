import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/components/custom_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const Text('New member? Create an account!'),
        const SizedBox(height: 150),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              customTextField(title: 'Username'),
              const SizedBox(height: 12),
              customPasswordTextField(title: 'Password'),
              const SizedBox(height: 12),
              customTextField(title: 'Email Address'),
              const SizedBox(height: 15),
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
      ]),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signInPage');
          },
          child: const BottomNavbarButton(buttonLabel: 'Sign Up')),
    );
  }
}
