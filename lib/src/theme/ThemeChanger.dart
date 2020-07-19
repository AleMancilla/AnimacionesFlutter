import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{
  bool _darktheme = false;
  bool _customtheme = false;

  ThemeData _currentTheme ;

  ThemeData get currentTheme => this._currentTheme;

  bool get darktheme => this._darktheme;
  bool get customtheme => this._customtheme;

  ThemeChanger(int theme){
    switch (theme) {
      case 1:
         _darktheme = false;
         _customtheme = false;
         _currentTheme = ThemeData.light();
        break;
      case 2:
         _darktheme = true;
         _customtheme = false;
         _currentTheme = ThemeData.dark();
        break;
      case 3:
         _darktheme = false;
         _customtheme = true;
        //  _currentTheme = ThemeData.light();
        break;
      default:
       _darktheme = false;
       _darktheme = false;
         _currentTheme = ThemeData.light();
    }
  }

  set darktheme(bool value){
    _customtheme = false;
    _darktheme =value;

    if(value){
      _currentTheme = ThemeData.dark();
    }else{
      _currentTheme = ThemeData.light();
    }

    notifyListeners();
  }
  set customtheme(bool value){
    _customtheme = value;
    _darktheme =false;
    if(value){
      _currentTheme = ThemeData.light();
    }else{
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
  }

  

}