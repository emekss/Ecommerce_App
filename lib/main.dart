import 'package:flutter/material.dart';

import 'package:sample_project/details_page.dart';

void main() => runApp(const SampleProject());

class SampleProject extends StatelessWidget {
  const SampleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsPage(),
    );
  }
}
