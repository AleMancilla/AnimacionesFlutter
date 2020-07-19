import 'package:custom_painter/src/challenge/CuadradoAnimado.dart';
import 'package:custom_painter/src/pages/Emergency_Page.dart';
import 'package:custom_painter/src/pages/GraficasCircularesPage.dart';
import 'package:custom_painter/src/pages/HomeOne.dart';
import 'package:custom_painter/src/pages/LauncherPage.dart';
import 'package:custom_painter/src/pages/PinteresPage.dart';
import 'package:custom_painter/src/pages/SlidesShowPage.dart';
import 'package:custom_painter/src/pages/SliverPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.slideshare, "SlideShow",SlideShowPage()),
  _Route(FontAwesomeIcons.ambulance, "Emergencia",EmergencyPage()),
  _Route(FontAwesomeIcons.heading, "Encabezados",HomeOne()),
  _Route(FontAwesomeIcons.peopleCarry, "Cuadro Animado",CuadradoAnimado()),
  _Route(FontAwesomeIcons.circleNotch, "barra Progreso",GraficasCirculares()),
  _Route(FontAwesomeIcons.pinterest, "Pinteres",PinteresPage()),
  _Route(FontAwesomeIcons.mobile, "Sliver",SliverPage()),
];

class _Route{
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon,this.titulo,this.page);
}