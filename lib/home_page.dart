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
                'assets/images/manu_1.jpg',
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
                ElevatedButton(
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(70, 70)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Men',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(70, 70)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Women',
                    style: TextStyle(color: Colors.black, fontSize: 20),
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
