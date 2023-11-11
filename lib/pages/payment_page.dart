import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sample_project/components/add_card_button.dart';
import 'package:sample_project/components/bottom_navbar_button.dart';
import 'package:sample_project/components/custom_address_textfield.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Payment', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),

        // ATM CARD ROW
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset('assets/images/card.png'),
                  const SizedBox(width: 20),
                  Image.asset('assets/images/card2.png'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //ADD NEW CARD BUTTON
            const AddCardButton(),

            const SizedBox(width: 20),

            //CARD OWNER TEXTFIELD
            const CustomAddressTextField(hintText: 'Name', name: 'Card Owner'),

            const SizedBox(width: 20),

            //CARD NUMBER TEXTFIELD
            const CustomAddressTextField(
                hintText: '5254 7634 8734 7690', name: 'Card Number'),

            const SizedBox(width: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // EXPIRY DATE TEXTFIELD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'EXP',
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
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '2773',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //CVV TEXTFIELD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CVV',
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

            const SizedBox(width: 20),

            //Save card info row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Save card info',
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
      bottomNavigationBar: const BottomNavbarButton(buttonLabel: 'Save Card'),
    );
  }
}
