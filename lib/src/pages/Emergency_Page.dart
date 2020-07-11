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
      body: Stack(
        children: [
          
          Container(
            // padding: EdgeInsets.only(top: 50.0),
            margin: EdgeInsets.only(top: 250.0),
            child: ListView(
              children: [
                SizedBox(height: 50.0,),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
                _BotonGordoTemp(),
              ],
            ),
          ),
          IconHeaderWidget(
            icono: FontAwesomeIcons.plus, 
            titulo: "Asistencia Medica", 
            subtitulo: "Has solicitado emergencia medica"
          )
        ],
      )
    );
  }
}

class _BotonGordoTemp extends StatelessWidget {
  const _BotonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icono: FontAwesomeIcons.carCrash,
      texto: "Hola Mari :* :*",
      color1: Colors.blue,
      color2: Colors.orange,
      onPress: (){print("Hola Mari");},
    );
  }
}