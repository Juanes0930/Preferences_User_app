import 'package:flutter/material.dart';


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
      drawer: Container(),
      body: const Center(child: Text('Home Screens'),)
    );
  }
}