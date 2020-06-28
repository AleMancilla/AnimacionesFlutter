import 'package:custom_painter/src/pages/GraficasCircularesPage.dart';
//import 'package:custom_painter/src/pages/HomeOne.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: GraficasCirculares()
    );
  }
}