import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setup/core/themes/theme.dart';

class ThemeProvider extends ChangeNotifier{

  bool darkTheme = false;

  ThemeData get themeMode => darkTheme? AppTheme.darkTheme : AppTheme.lightTheme;

  toggleTheme() {
    darkTheme = darkTheme == true? false:true;
    notifyListeners();
   }

}