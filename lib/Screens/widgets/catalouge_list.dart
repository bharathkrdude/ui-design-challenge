import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CatalogueList extends StatelessWidget {
  CatalogueList({super.key});
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Card(
              margin: EdgeInsets.all(12),
                child: ListTile(
              trailing: Icon(Icons.more_vert),
              leading: Image.asset(productsimage[index]),
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Text(
                        producttitle[index],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      '1 piece',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        productprice[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'In Stock',
                          style: TextStyle(color: Colors.green),
                        ),
                        // FlutterSwitch(
                        //   value: status,
                        //   onToggle: (status) {},
                        //   width: 30,
                        //   height: 15,
                        //   toggleSize: 7,
                        // )
                        Switch(value: status, onChanged: (status){})
                      ],
                    ),
                    Divider(),
                  ],),
                  
              subtitle: Column(
                // shape: RoundedRectangleBorder(
                //     side: BorderSide(color: Colors.black),
                //     borderRadius: BorderRadius.circular(10)),
               
                children: 
                  [Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                    child: Column(
                      children: [
                        Wrap(
                          spacing: 5,
                          children: [
                            const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            Text(
                              'Share Product',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
          })),
    );
  }
}

List producttitle = [
  'Couch Potato | Women T Shirt',
  'Couch Potato  | Men T Shirt',
  'Mug | Explore',
  'Combo Blahst 1 | Pack',
  'Mug | Orchard',
  'I See Combo Pack',
  'Kids Combo Blahst',
  'Men | Cyan T Shirt',
  'Men | Blue T Shirt',
  'Men | Red T Shirt',
];
List productprice = [
  '₹799',
  '₹2397.4',
  '₹2686.42',
  '₹1722.75',
  '₹2599.25',
  '₹599.25',
  '₹524.25',
  '₹1699',
  '₹1123.5',
  '₹1524.25',
];
List productsimage = [
  'assets/images/KARMA-TSHIRT-mydesignation-image.jpg',
  'assets/images/yellowtshirt.jpg',
  'assets/images/1640124144-axel-caramel-mug.jpg',
  'assets/images/malayali-hoodie-mydesignation-product-image.jpg',
  'assets/images/1640124144-axel-caramel-mug.jpg',
  'assets/images/maroon_600x.webp',
  'assets/images/tracebraintshirt.jpg',
  'assets/images/CarolinaBlue_1800x1800.webp',
  'assets/images/men-s-round-neck-plain-t-shirt-red-regular-fit-t-shirt-wolfattire-112358522905_600x.webp',
  'assets/images/foodie-tshirt-image-mydesignation-eat-at-trivandrum-C.jpg',
  
];
