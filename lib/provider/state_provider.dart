
import 'package:flutter/material.dart';

class StateProvider extends ChangeNotifier {
    ThemeData currentTheme;

    StateProvider({
      required bool isDarkmode,
    }):currentTheme = isDarkmode ? ThemeData.dark(useMaterial3: true) : ThemeData.light(useMaterial3: true);

   setLightMode (){
    currentTheme = ThemeData.light();
    notifyListeners();
   }

   setDarkMode(){
    currentTheme = ThemeData.dark();
    notifyListeners();
   }

}