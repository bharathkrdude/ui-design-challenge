import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/additional_information.dart';
import 'package:ui_designs/Screens/catalouge.dart';
import 'package:ui_designs/Screens/dukaan_premium.dart';
import 'package:ui_designs/Screens/manage_store.dart';
import 'package:ui_designs/Screens/order.dart';
import 'package:ui_designs/Screens/payments.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> items = [' AdditionalInfo', ' ManageStore', 'DukaanPremium', 'ScreenPayement', ' Catalouge', 'ScreenOrder'];
  List<Widget> UItitle = [
    const AdditionalInfo(),
    const ManageStore(),
    const Dukaanpremium(),
    const ScreenPayements(),
          Catalouge(),
    const ScreenOrder()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UItitle[index],
                ),
              );
            },
          );
        },
      ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text('UI Designs'),
    );
  }
}
