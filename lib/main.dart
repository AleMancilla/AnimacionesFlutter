
//import 'package:custom_painter/src/Labs/SlideShow.dart';
import 'package:custom_painter/src/pages/Emergency_Page.dart';
import 'package:custom_painter/src/pages/LauncherPage.dart';
import 'package:custom_painter/src/pages/PinteresPage.dart';
import 'package:custom_painter/src/pages/SlidesShowPage.dart';
import 'package:custom_painter/src/pages/SliverPage.dart';
import 'package:custom_painter/src/theme/ThemeChanger.dart';
//import 'package:custom_painter/src/pages/HomeOne.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(
  ChangeNotifierProvider(
    create: (_)=>ThemeChanger(2),
    child: MyApp()
  )
);
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      theme: appTheme,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: LaunchesPage()
    );
  }
}