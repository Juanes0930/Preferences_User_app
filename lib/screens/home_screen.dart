import 'package:flutter/material.dart';

import '../widgets/side_menu.dart';


class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      drawer:const SideMenu(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Divider(height: 30,),
        Text('Darkmode', style: TextStyle(fontSize: 20)),
        Divider(height: 30,),
        Text('Gender', style: TextStyle(fontSize: 20)),
        Divider(height: 30,),
        Text('Settings', style: TextStyle(fontSize: 20)),
        ],
      )
    );
  }
}