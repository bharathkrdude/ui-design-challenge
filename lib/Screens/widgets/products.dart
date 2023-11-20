import 'package:flutter/material.dart';


class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
  children: [
   const ListTile(
      title: Text('Share Dukaan App'),
      leading: Icon(Icons.share_outlined),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
   const  ListTile(
      title: Text('Change Language'),
      leading: Icon(Icons.chat_outlined),
      trailing: Icon(Icons.arrow_forward_ios),
    ), ListTile(
      title:const Text('Whatsapp Chat Support'),
      leading: const Icon(Icons.whatsapp_outlined),
      trailing: Switch(value: true, onChanged: ((value) { 
        
      })),
    ),const ListTile(
      title: Text('Privacy policy'),
      leading: Icon(Icons.lock_outline),
      
    ),const ListTile(
      title: Text('Rate us'),
      leading: Icon(Icons.star_border_outlined),
      
    ),const ListTile(
      title: Text('Sign Out'),
      leading: Icon(Icons.logout_outlined),
    
    ),
  ],
),
    );
  }
}