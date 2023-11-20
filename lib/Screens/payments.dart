import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/additional_information.dart';
import 'package:ui_designs/Screens/widgets/payment_list.dart';

class ScreenPayements extends StatelessWidget {
  const ScreenPayements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Payments', Icons.arrow_back),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            transactionLimit(),
            dropdownButtons(),
            transactions(),
            PaymentList(),
          ],
        ),
      )),
    );
  }

  Padding transactions() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transactions',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  'On hold',
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(
                  'Payouts(15)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text('Refunds',
                    style: TextStyle(color: Colors.grey[800])),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            )
          ],
        ),
      ],
    ),
  );
  }

  Padding dropdownButtons() {
    return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                DropdownButtonFormField(
                  items: [],
                  onChanged: ((value) {}),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Online Payments'),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  hint: Row(
                    children: [Text('Default Method')],
                  ),
                ),
                DropdownButtonFormField(
                  items: [],
                  onChanged: ((value) {}),
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment Profile'),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  hint: Row(
                    children: [Text('Bank Account')],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Payments Overview',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text('Life Time'),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '₹0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT RECEIVED',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '₹13,332',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
  }

  Center transactionLimit() {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction Limit',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('''A free limit up to which you will recieve  
the online payments directly in your bank'''),
              SizedBox(
                height: 10,
              ),
              const LinearProgressIndicator(
                semanticsLabel: '36,668 left out of ₹50,000 ',
                value: 0.3,
              ),
              SizedBox(
                height: 6,
              ),
              Text('36,668 left out of ₹50,000'),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Increase limit',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
