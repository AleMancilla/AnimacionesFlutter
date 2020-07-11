import 'package:custom_painter/src/widgets/BotonGordo.dart';
import 'package:custom_painter/src/widgets/HeaderOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}

 
class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final items = <ItemBoton>[
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
    ];

    final itemMap = items.map(
      (e) => BotonGordo(icono: e.icon, texto: e.texto,color1: e.color1,color2: e.color2,onPress: (){},)
    ).toList();

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
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 50.0,),
                ...itemMap
              ],
            ),
          ),
          _Encabezado()
        ],
      )
    );
  }
}

class _Encabezado extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        IconHeaderWidget(
          icono: FontAwesomeIcons.plus, 
          titulo: "Asistencia Medica", 
          subtitulo: "Has solicitado emergencia medica"
        ),

        Positioned(
          right: 10.0,
          top: 40.0,
          child: RawMaterialButton(
            onPressed: (){},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15.0),
            child: FaIcon(FontAwesomeIcons.ellipsisV,color: Colors.white,)
          )
        )

      ],
    );
  }
}

class _BotonGordoTemp extends StatelessWidget {

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