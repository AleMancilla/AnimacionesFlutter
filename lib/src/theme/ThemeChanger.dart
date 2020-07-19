import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{
  bool _darktheme = false;
  bool _customtheme = false;

  bool get darktheme => this._darktheme;
  bool get customtheme => this._customtheme;

  set darktheme(bool value){
    _customtheme = false;
    _darktheme =value;
    notifyListeners();
  }
  set customtheme(bool value){
    _customtheme = value;
    _darktheme =false;
    notifyListeners();
  }



}