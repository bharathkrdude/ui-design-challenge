
import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/additional_information.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Order #1688068', Icons.arrow_back),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: 
              [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orderStatus(),
                  myDivider(),
                  receiptLine(),
                  SizedBox(height: 8),
                  orderedItem(),
                  myDivider(),
                  totalBill(),
                  myDivider(),
                  costemerDetailes(),
                  myDivider(),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ADDITIONAL INFORMATION'),
                    SizedBox(
              height: 10,
                    ),
                    Text(
              'State',
              style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
              height: 3,
                    ),
                    Text('Karnataka'),
                    SizedBox(
              height: 10,
                    ),
                    Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
              height: 3,
                    ),
                    Text('greeniceaqua@gmail.com'),
                    SizedBox(
              height: 10,
                    ),
                  ],
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column costemerDetailes() {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('CUSTOMER DETAILS' ,style: TextStyle(color: Colors.grey),),
          SizedBox(
            width: 100,
          ),
          Icon(
            Icons.share_outlined,
            color: Colors.blue,
          ),
          Text(
            'SHARE',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deepa',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text('+91-7829000484')
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Icon(
            Icons.phone,
            color: Colors.blue[900],
          ),
          Icon(
            Icons.wechat,
            color: Colors.green,
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Address',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 3,
      ),
      Text('''D 1101 Chartered Beverly
Hills,Subramanyapura P.O'''),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            'City',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 140,
          ),
          Text(
            'Pincode',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        children: [
          Text('Banglore'),
          SizedBox(
            width: 110,
          ),
          Text('560061')
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Payment',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Online'),
          // SizedBox(
          //   width: 100,
          // ),
          Card(
            color: Colors.green[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1.5),
              child: Text(
                'PAID',
                style: TextStyle(color: Colors.green,fontWeight:FontWeight.w700 ),
              ),
            ),
            shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.green),borderRadius: BorderRadius.horizontal(left:Radius.elliptical(3, 3),right: Radius.elliptical(3, 3))),
          )
        ],
      )
    ],
  );
  }

  Divider myDivider() => const Divider( thickness: 1.5,);

  Column totalBill() {
    return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            'Item Total',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 200,
          ),
          Text(
            '₹799',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      SizedBox(
        height: 4,
      ),
      Row(
        children: [
          Text(
            'Delivery',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 220,
          ),
          Text(
            'FREE',
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ],
      ),
      SizedBox(
        height: 4,
      ),
      Row(
        children: [
          Text(
            'Grand Total',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 190,
          ),
          Text(
            '₹799',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );
  }

  Row orderedItem() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.network("https://res.cloudinary.com/etherbit/image/upload/f_auto,q_auto:eco,dpr_1.5,c_limit,w_400/s/build/img/products/1x1-d77768-etherbit-merch-just-hod.png"
                    ,
        width: 55,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Explore|Men|Navy Blue', style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 4,
          ),
          Text('1 piece'),
          Text('Size:XL'),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Card(
                color: Colors.blue[100],
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  child: Text('1'),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(4)),
              ),
              Text('X ₹799'),
              SizedBox(
                width: 150,
              ),
              Text(' ₹799'),

            ],
          ),
        ],
      )
    ],
  );
  }

  Row receiptLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "1 ITEM",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.receipt),
          label: Text('RECEIPT'),
        ),
      ],
    );
  }

  Row orderStatus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'May 31 05:42 PM',
          style: TextStyle(fontSize: 18),
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.circle,size: 8,),
            label: Text(
              'Delivered',
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }
}
  //  ListTile(
  //               title: Text('Explore|Men|Navy Blue'),
  //               subtitle: Text('1 piece\nSize:XL'),
  //               leading: 
  //                  Image.network(
  //                   "https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/4e4c4bfcad474a1abbeeaec300f1233f_9366/disney-graphic-tee.jpg",
                    
  //                 ),
                
  //             ),