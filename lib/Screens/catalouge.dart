import 'package:flutter/material.dart';
import 'package:ui_designs/Screens/widgets/catalouge_list.dart';


class Catalouge extends StatelessWidget {
  const Catalouge({super.key});
  final upperTab = const TabBar(tabs: <Tab>[
    Tab(
      icon: Text(
        'Products',
      ),
    ),
    Tab(
      icon: Text('Categories'),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blue[50],
          title: Center(child: Text('Catalouge')),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          bottom: upperTab,
        ),
        body:  CatalogueList(),
      ),
    );
  }
}
// DefaultTabController(
//         length: 2,
//         initialIndex: 0,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Center(
//               child: Text('Catalouge'),
//             ),
//             actions: [Icon(Icons.search)],
//             bottom: TabBar(
//               tabs:<Widget>[
//                 Tab(
//                   text: 'Products',
//                 ),
//                 Tab(
//                   text: 'Catagories',
//                 ),
//               ],
//             ),
//           ),
          
//         ));