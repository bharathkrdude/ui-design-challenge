import 'package:flutter/material.dart';

class DukaanPremiu extends StatefulWidget {
  const DukaanPremiu({super.key});

  @override
  State<DukaanPremiu> createState() => _DukaanPremiuState();
}

class _DukaanPremiuState extends State<DukaanPremiu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        
          child: ListView(
        children: [
          dukaanPremium(),
          SizedBox(
            height: 10,
          ),
          features(),
          videoCard(),
          questionCard(),
          helpCard(),
          premiumCard(),
          // videoCard(),
        ],
      )),
    );
  }

  dukaanPremium() {
    return Stack(
      // alignment: AlignmentDirectional(start, y),
      children: [
        Container(
          height: 205,
          width: 400,
          color: Colors.blue,
        ),
        Positioned(
          top: 125,
          child: Container(
            height: 80,
            width: 400,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 35,
          top: 10,
          child: Card(
            margin: EdgeInsets.all(5.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Column(
                  children: [
                    //dukaan logo image,
                    Image.asset(
                      'assets/images/62b30f8cb223544c209f5e56.png',
                      width: 90,
                    ),
                    Text(
                      '''Get Dukaan Premium for just 
                ₹4,999/year''',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
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
    );
  }

  features() {
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

  videoCard() {
    return Container(
      child: Padding(
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
      ),
    );
  }

  questionCard() {
    String dropdownValue1 = 'What types of businesses can use Dukaan Premium';
    String dropdownValue2 = 'er';
    return Card(
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
    );
  }

  helpCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Need help? Get in touch',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.black87,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 43),
                    child: Center(
                      child: Column(children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 50,
                        ),
                        Text('Live Chat'),
                      ]),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 43),
                    child: Center(
                      child: Column(children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 50,
                        ),
                        Text('Phone Call'),
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  premiumCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Domain',
              style: TextStyle(color: Colors.blue[900], fontSize: 16),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 36),
                  child: Text(
                    'Get Premium',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))))
          ],
        ),
      ),
    );
  }
}
//  Scaffold(
//       body: Stack(
//         children: <Widget>[
//           SizedBox(
//             height: 160,
//             child: appBar('Dukaan Premium', Icons.arrow_back),
//           ),
//         Padding(
//             padding: const EdgeInsets.only(top: 100),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               child: Container(
//                 height: 200,
//                 width: 320,
//                 color: Colors.white,
//                 child: Center(
                  
//                   child: Text(
//                     '''Get Dukaan Premium for just 
//                 4999/year''',
//                     maxLines: 20,
//                     style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
                  
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }