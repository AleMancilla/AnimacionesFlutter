import 'package:custom_painter/src/widgets/BotonGordo.dart';
import 'package:custom_painter/src/widgets/HeaderOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      //body: IconHeaderWidget(
      //  icono: FontAwesomeIcons.plusCircle,
      //  titulo: "Mari Holi",
      //  subtitulo: "Me encantas",
      //  colorTop: Colors.orange,
      //),
      body: Center(child: BotonGordo()),
    );
  }
}