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