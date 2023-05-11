import 'package:flutter/material.dart';

import '../config_preferences/config_preferences.dart';
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
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       const  Divider(height: 30,),
        Text('Darkmode: ${ConfigPreferences.isDarkmode}', style: const TextStyle(fontSize: 20)),
        const Divider(height: 30,),
        Text('Gender : ${ConfigPreferences.gender}', style: const TextStyle(fontSize: 20)),
        const Divider(height: 30,),
        Text('Settings: ${ConfigPreferences.name}', style: const TextStyle(fontSize: 20)),
        ],
      )
    );
  }
}