import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/brasil.webp',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            height: 250,
            child: Column(children: [
              const Text(
                'Look Good,Feel Good',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Create your Individual and unique style and look amazing everyday.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'getStartedPage');
                  },
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xF5F6FA)),
                      height: 60,
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
                    decoration: BoxDecoration(color: const Color(0xF5F6FA)),
                    height: 60,
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
