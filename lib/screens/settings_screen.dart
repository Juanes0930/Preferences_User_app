

import 'package:flutter/material.dart';
import 'package:preferences_user_app/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {

 
  
  static const String routerName = 'Settings';
 
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
     appBar: AppBar(
      title: const Text('Settings'),
      centerTitle: true,
     ),
      drawer: const SideMenu(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text('Settings', style: TextStyle(fontSize: 45),),
             const Divider(height: 15,),
              SwitchListTile.adaptive(
                title: const Text('Darkmode' , style: TextStyle(fontSize: 20)),
                value: true, onChanged: (value){}),
                const Divider(height: 15,),
                RadioListTile(
                  value: 1, 
                  groupValue: 1, 
                  title: const Text('Male'),
                  onChanged: (value){}),
                  const Divider(height: 15,),
                RadioListTile(
                  value: 2, 
                  title: const Text('Female'),
                  groupValue: 1, 
                  onChanged: (value){}),
                  const Divider(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                    initialValue: 'Juan' ,
                    decoration: const InputDecoration(
                      labelText: 'name',
                      helperText: 'UserName',
                    ),
                    ),
                  )
            ],
          ),
        ),
      )
    );
  }
}