import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/wallpaper.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 650, left: 23),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            height: 244,
            width: 380,
            child: Column(children: [
              const Text(
                'Look Good,Feel Good',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Create your Individual and unique style and look amazing everyday.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/createAccountPage');
                  },
                  child: Card(
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0x00f5f6fa)),
                      height: 50,
                      width: 152,
                      child: const Center(
                          child: Text(
                        'Men',
                        style: TextStyle(fontSize: 19),
                      )),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.purple[300]),
                    height: 50,
                    width: 152,
                    child: const Center(
                        child: Text(
                      'Women',
                      style: TextStyle(fontSize: 19),
                    )),
                  ),
                ),
              ]),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))
            ]),
          ),
        ),
      ]),
    );
  }
}
