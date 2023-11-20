import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/components/custom_address_textfield.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartPage');
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Address',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            //Name Textfield
            const CustomAddressTextField(
                hintText: 'Type your Name', name: 'Name'),
            const SizedBox(height: 20),
            // Country and City Colum
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Country',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),

                      // Country Textfield
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Country',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'City',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),

                      // Country Textfield
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter City',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            //Phone Number Textfield
            const CustomAddressTextField(
                hintText: '+234 90 1234 5678', name: 'Phone Number'),
            const SizedBox(height: 20),

            //Address Textfield
            const CustomAddressTextField(
                hintText: 'Abuja, Nigeria, 12A', name: 'Address'),

            const SizedBox(height: 20),

            //Save Primary Address
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Save as primary address',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),

                //swith
                FlutterSwitch(
                    activeColor: Colors.green,
                    width: 55.0,
                    height: 30.0,
                    valueFontSize: 15.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    })
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      content: Text(
                        'Address Saved Successfully',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ));
          },
          child: const BottomNavbarButton(buttonLabel: 'Save your Address')),
    );
  }
}
