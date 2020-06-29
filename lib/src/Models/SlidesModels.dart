import 'package:flutter/material.dart';
class SlidesModels with ChangeNotifier {
  double _posicion =0;

  double get posicion => this._posicion;

  set setPosicion(double posicion){
    this._posicion = posicion;
    notifyListeners();
  }
}