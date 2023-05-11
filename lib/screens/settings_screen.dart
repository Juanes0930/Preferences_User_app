import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';
 
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Container(),
      body: const Center(
        child: (
          Text('Settings Screens')
        ),
      ),
    );
  }
}