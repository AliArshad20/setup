import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  bool isdark = false;

  themeMode() {
    return isdark==true? ThemeData.dark():ThemeData.light();
    n
  }
   toggleTheme() {
    isDark
   }

}