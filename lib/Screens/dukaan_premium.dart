
import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/additional_information.dart';

class Dukaanpremium extends StatefulWidget {
  const Dukaanpremium({super.key});

  @override
  State<Dukaanpremium> createState() => _DukaanpremiumState();
}

class _DukaanpremiumState extends State<Dukaanpremium> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue1 = 'What types of businesses can use Dukaan Premium';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topWidget(),
            features(),
            videoCard(),
             Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          children: [
            Text('Frequently asked questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              hint: Text(
                '''What types of businesses can use Dukaan Premium?''',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: Icon(Icons.add),
              onChanged: (String? newValue) {
                setState(() {
                  newValue = dropdownValue1;
                });
              },
              items: <String>[
                '''Dukaan caters to a wide variety of sellers.
Be it a small grocery store or big
legacy brand-anyone who wants to sell
their products/services online - 
Dukaan is the perfect platform for you'''
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: ((value) {}),
              hint: Text(
                'What is your refund policy?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: ((value) {}),
              hint: Text(
                '''Will there be an automatic charge after the paid trial?''',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: ((value) {}),
              hint: Text(
                'What payment methods do you offer?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: ((value) {}),
              hint: Text(
                'What happens when my free trial ends?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: [],
              onChanged: ((value) {}),
              hint: Text(
                'What are the terms for custom dmain?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    ),
    
          ],
        ),
      ),
    );
  }

  Padding videoCard() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/youtubepremium.jpg'),
                Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                )
              ],
            ),
          );
  }

  Container features() {
    return Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Features',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              ListTile(
                leading: Image.asset('assets/images/f1.jpeg'),
                title: Text(
                  'Custom domain name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Get your own domain and build your brand on the internet.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/f2.jpeg'),
                title: Text(
                  'Verified Seller badge',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'Get green verified badge under your store name and build trust.',
                    style: TextStyle(fontSize: 12)),
              ),
              ListTile(
                leading: Image.asset('assets/images/f3.jpeg'),
                title: Text(
                  'Dukaan for PC',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'Access all the exclusive premium features on Dukaan for PC.',
                    style: TextStyle(fontSize: 12)),
              ),
              ListTile(
                leading: Image.asset('assets/images/f4.jpeg'),
                title: Text(
                  'Priority Support',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'Get your questions resolved with our priority customer support.',
                    style: TextStyle(fontSize: 12)),
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 2,
              )
            ],
          ),
        );
  }

  Container topWidget() {
    return Container(
          height: 250,
          child: Stack(
            children: [
              SizedBox(
                child: appBar('Dukaan premium', Icons.arrow_back),
                height: 160,
              ),
              Positioned(
                left: 32,
                top: 70,
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.all(4.0),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                      child: Column(
                        children: [
                          //dukaan logo image,
                          Image.asset(
                            'assets/images/62b30f8cb223544c209f5e56.png',
                            width: 90,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30, right: 30),
                            child: Text(
                              '''Get Dukaan Premium for just 
                ₹4,999/year''',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Text(
                            '''All the advanced features for scaling your 
                           business.''',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
