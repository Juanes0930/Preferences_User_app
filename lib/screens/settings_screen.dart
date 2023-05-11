

import 'package:flutter/material.dart';
import 'package:preferences_user_app/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import '../config_preferences/config_preferences.dart';
import '../provider/state_provider.dart';

class SettingsScreen extends StatefulWidget {

 
  
  static const String routerName = 'Settings';
 
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //bool isDarkmode = false;
  //int gender = 1;
  //String name = 'name';

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
                value: ConfigPreferences.isDarkmode, 
                onChanged: (value){
                  ConfigPreferences.darkmode = value ;
                  final themeProvider = Provider.of<StateProvider>(context , listen:false); 
                  value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                  setState(() {});
                }),
                const Divider(height: 15,),
                RadioListTile(
                  value: 1, 
                  groupValue:ConfigPreferences.gender,
                  title: const Text('Male'),
                  onChanged: (value){
                    ConfigPreferences.gender = value ?? 1;
                   setState(() {});
                  }),
                  const Divider(height: 15,),
                RadioListTile(
                  value: 2, 
                  title: const Text('Female'),
                  groupValue:ConfigPreferences.gender, 
                  onChanged: (value){
                    ConfigPreferences.gender = value ?? 2;
                   setState(() {});
                  }),
                  const Divider(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                    initialValue: ConfigPreferences.name,
                    onChanged: (value) {
                      ConfigPreferences.name = value;
                      setState(() {});
                    },
                    
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