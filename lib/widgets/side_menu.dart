import 'package:flutter/material.dart';

import '../screens/screens.dart';



class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
         _DrawerHeader(),
          ListTile(
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,),
          leading: const Icon(Icons.pages_outlined, color: Colors.blueAccent,),
          title: const Text('Darkmode' , style: TextStyle(fontSize: 17)),
          onTap: (){
            Navigator.pushReplacementNamed(context,HomeScreen.routerName);
          },
         ),
          const Divider(),
          ListTile(
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,),
          leading: const Icon(Icons.people_alt_outlined, color: Colors.blueAccent,),
          title: const Text('Gender' , style: TextStyle(fontSize: 17)),
          onTap: (){},
         ),
          const Divider(),
          ListTile(
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,),
          leading: const Icon(Icons.settings, color: Colors.blueAccent,),
          title: const Text('Settings' , style: TextStyle(fontSize: 17)),
          onTap: (){
            Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
          },
         ),
          const Divider(),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/menu-img.jpg'),
            fit: BoxFit.cover)
        ),
      child: Container(),
      );
  }
}