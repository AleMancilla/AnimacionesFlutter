import 'package:flutter/material.dart';
class SlidesModels with ChangeNotifier {
  double _posicion =0;

  double get getPosicion => this._posicion;

  set setPosicion(double posicion){
    this._posicion = posicion;
    //print("####### $posicion");
    notifyListeners();
  }


}