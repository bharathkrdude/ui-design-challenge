import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/additional_information.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Manage Store'),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'Orders',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_rounded),
            label: 'Products',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.queue),
            label: 'Manage',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Account',
          ),
          ],
        ),

      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        children: [
          // Container( ),
          cards(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.green,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.currency_rupee_rounded,
                      color: Colors.white,
                      size: 45,
                    ),
                    
                  ),
                  Text('Online Payments',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ),
          Card( child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.yellow,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.percent_rounded,
                      color: Colors.white,
                      size: 45,
                    ),
                    
                  ),
                  Text('Discount\nCoupons',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),)
                ],
              ),
            ), ),
          Card( child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.teal,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.people_alt_outlined,
                      color: Colors.white,
                      size: 45,
                    ),
                    
                  ),
                  Text('My\nCostomers',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),)
                ],
              ),
            ),),
          Card( child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.filter_center_focus_outlined,
                      color: Colors.white,
                      size: 45,
                    ),
                    
                  ),
                  Text('Store QR\nCode',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),)
                ],
              ),
            ),),
          Card( child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.purple,
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.request_page_outlined,
                      color: Colors.white,
                      size: 45,
                    ),
                    
                  ),
                  Text('Extra\nCharges',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),)
                ],
              ),
            ),),
          Card( child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.pink,
                        ),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.format_align_left,
                          color: Colors.white,
                          size: 45,
                         ), 
                        
                      ),
                      Container(margin: EdgeInsets.only(bottom: 30,left: 30 ),color: Colors.green,width: 50 ,height: 20 ,child: Text('New',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),)
                    ],
                  ),
                   Text('Order\nForm',style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500),),
                  
                ],
              ),
            ),)
        ],
      ),
    );
  }

  
}
Card cards() {
    return Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.orange,
                  ),
                  height: 50,
                  width: 50,
                  child: const Icon(
                    Icons.volume_down,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                Text(
                  'Marketing Designs',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        );
  }