
//import 'package:custom_painter/src/Labs/SlideShow.dart';
import 'package:custom_painter/src/Models/layoutModel.dart';
import 'package:custom_painter/src/pages/LauncherPage.dart';
import 'package:custom_painter/src/pages/Launcher_Tablet_Page.dart';
import 'package:custom_painter/src/theme/ThemeChanger.dart';
//import 'package:custom_painter/src/pages/HomeOne.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(
  ChangeNotifierProvider(
    create: (_)=> new LayoutPage(),
    child: ChangeNotifierProvider(
      create: (_)=>ThemeChanger(2),
      child: MyApp()
    ),
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
      home: 
      OrientationBuilder(
        builder: (context, orientation) {
          final screenSize = MediaQuery.of(context).size;

          if( screenSize.width > 500){
            return LaunchesTabletPage();
          }else{
            return LaunchesPage();
          }

          // print("Orientacion = $orientation");
          // return LaunchesPage();
        } ,
         //LaunchesPage()
        
    ));
  }
}