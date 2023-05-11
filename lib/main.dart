import 'package:flutter/material.dart';
import 'package:preferences_user_app/config_preferences/config_preferences.dart';
import 'package:preferences_user_app/provider/state_provider.dart';
import 'package:preferences_user_app/screens/home_screen.dart';
import 'package:preferences_user_app/screens/settings_screen.dart';
import 'package:provider/provider.dart';

void main() async {

WidgetsFlutterBinding.ensureInitialized();  
await ConfigPreferences.init();
runApp(
  MultiProvider(
    providers:[
        ChangeNotifierProvider(create: (_) => StateProvider(isDarkmode: ConfigPreferences.isDarkmode),)
    ],
    child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:Provider.of<StateProvider>(context).currentTheme,
      title:'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen()
      },
    );
  }
}
