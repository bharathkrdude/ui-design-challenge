import 'package:flutter/material.dart';

class PaymentList extends StatelessWidget {
  PaymentList({super.key});

  List<String> title = [
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
  ];

  List<String> title2 = [
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
  ];
  List<String> subtitle = [
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
  ];
  List<String> image = [
    
    'assets/images/yellowtshirt.jpg',
    'assets/images/1640124144-axel-caramel-mug.jpg',
    'assets/images/foodie-tshirt-image-mydesignation-eat-at-trivandrum-C.jpg',
    'assets/images/men-s-round-neck-plain-t-shirt-red-regular-fit-t-shirt-wolfattire-112358522905_600x.webp',
    'assets/images/round-neck-blank-custom-logo-unisex-white-t-shirts-500.webp',
    'assets/images/CarolinaBlue_1800x1800.webp',
    'assets/images/mug4.jpg',
    'assets/images/CarolinaBlue_1800x1800.webp',
    'assets/images/malayali-hoodie-mydesignation-product-image.jpg',
    'assets/images/foodie-tshirt-image-mydesignation-eat-at-trivandrum-C.jpg',
    'assets/images/CarolinaBlue_1800x1800.webp',
    'assets/images/tracebraintshirt.jpg',
    'assets/images/yellowtshirt.jpg',
    'assets/images/CarolinaBlue_1800x1800.webp',
    'assets/images/1640124144-axel-caramel-mug.jpg',
  ];
  List<String> price = [
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488',
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488',
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488'
  ];

  List<String> status = [
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: ((context, index) {
        return const Divider();
      }),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title[index],
              ),
              Text(title2[index],
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
              SizedBox(
                height: 15,
              )
            ],
          ),
          subtitle: Text(
            subtitle[index],
            style: TextStyle(fontSize: 10),
          ),
          leading: Image.asset(image[index]),
          trailing: Column(
            children: [
              Text(price[index],
                  style:
                      TextStyle(color: const Color.fromARGB(255, 32, 94, 163))),
             
            ],
          ),
        );
      },
    );
  }
}