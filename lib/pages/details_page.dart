import 'package:flutter/material.dart';

import 'package:sample_project/components/custom_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String mainView = 'assets/images/mainhoddie.png';
  String image1 = 'assets/images/facehoodie.png';
  String image2 = 'assets/images/handhoodie.png';
  String image3 = 'assets/images/neckhoodie.png';
  String image4 = 'assets/images/backhoodie.png';

  List<String> size = const ['S', 'M', 'L', 'XL', '2XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(
              height: 207,
              child: Image.asset(
                mainView,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 46,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      productLabel(label: 'Mens Printed Pullover Hoodie'),
                      productLabel(label: 'Price')
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nike Club Fleece',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '£120',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 21),
            SizedBox(
              height: 77,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          mainView = image1;
                        });
                      },
                      child: Image.asset(image1),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          mainView = image2;
                        });
                      },
                      child: Image.asset(image2),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          mainView = image3;
                        });
                      },
                      child: Image.asset(image3),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          mainView = image4;
                        });
                      },
                      child: Image.asset(image4),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          mainView = image4;
                        });
                      },
                      child: Image.asset(image4),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                productLabel(label: 'Size'),
                productLabel(label: 'Size Guide')
              ],
            ),
            SizedBox(
              height: 89,
              child: Expanded(
                child: GridView.builder(
                    itemCount: size.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5),
                    itemBuilder: (context, index) {
                      return sizeButton(label: size[index]);
                    }),
              ),
            ),
            const Column(
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Text('data')
              ],
            )
          ],
        ),
      ),
    );
  }
}
