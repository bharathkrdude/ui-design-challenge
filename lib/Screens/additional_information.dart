import 'package:flutter/material.dart';


class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Additional information', Icons.arrow_back),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 15),
        child: const Text('version\n2.4.2',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500), ),
      ),
      
      
      
      body: SafeArea(
        child: ListView( itemExtent: 40,
          children: [
            const ListTile(
              // contentPadding: EdgeInsets.all(3),
              title: Text('Share Dukaan App'),
              leading: Icon(Icons.share_outlined,size: 23,),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
            const ListTile(
              title: Text('Change Language'),
              leading: Icon(Icons.chat_outlined),
              trailing: Icon(Icons.arrow_forward_ios,size: 1,),
            ),
            ListTile(
              title: const Text('Whatsapp Chat Support'),
              leading:  Icon(Icons.wechat),
              trailing: Switch(value: true, onChanged: ((value) {})),
            ),
            const ListTile(
              title: Text('Privacy policy'),
              leading: Icon(Icons.lock_outline),
            ),
            const ListTile(
              title: Text('Rate us'),
              leading: Icon(Icons.star_border_outlined),
            ),
            const ListTile(
              title: Text('Sign Out'),
              leading: Icon(Icons.logout_outlined),
            ),
          ],
          
          
        ),
        
        
      ),
    
    );
  }
}

AppBar appBar(String title, [IconData? icon, IconData? icon1]) {
  return AppBar(
    leading: Icon(icon),
    title: Center(child: Text(title)),
    actions: [Icon(icon1)],
  );
}
