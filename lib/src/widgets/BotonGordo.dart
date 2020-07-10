import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {

  final IconData icono;
  final Color color1;
  final Color color2;
  final String texto;
  final Function onPress;

  const BotonGordo({ 
    @required this.icono,
    @required this.texto, 
    this.color1 = Colors.blue, 
    this.color2 = Colors.orange, 
    @required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        _backgroundBoton(
          icono: this.icono,
          color1: this.color1,
          color2: this.color2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140.0,width: 40.0,),
            FaIcon(this.icono, color: Colors.white, size: 40.0,),
            SizedBox(width: 20.0,),
            Expanded(child: Text("${this.texto}",style: TextStyle( color: Colors.white, fontSize: 18.0),)),
            FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,),
            SizedBox(width: 40.0,),
          ],
        )
      ],
    );
  }
}

class _backgroundBoton extends StatelessWidget {
  
  final IconData icono;
  final Color color1;
  final Color color2;

  const _backgroundBoton({
    @required this.icono, 
    @required this.color1, 
    @required this.color2
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(
          children: [
            Positioned(
              right: -20.0,
              top: -20.0,
              child: FaIcon(this.icono, size: 150.0, color: Colors.white.withOpacity(0.2),)
            )
          ],
        ),
      ),

      width: double.infinity,
      height: 100.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        //color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black.withOpacity(0.2),offset: Offset(4, 6),blurRadius: 10.0),
        ],
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(colors: <Color>[
          color1,
          color2
          //Color(0xff6989F5),
          //Color(0xff906EF5),
        ])
      ),
    );
  }
}