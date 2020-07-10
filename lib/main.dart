
//import 'package:custom_painter/src/Labs/SlideShow.dart';
import 'package:custom_painter/src/pages/Emergency_Page.dart';
import 'package:custom_painter/src/pages/PinteresPage.dart';
import 'package:custom_painter/src/pages/SlidesShowPage.dart';
//import 'package:custom_painter/src/pages/HomeOne.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: EmergencyPage()
    );
  }
}