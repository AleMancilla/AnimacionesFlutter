import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        _backgroundBoton(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140.0,width: 40.0,),
            FaIcon(FontAwesomeIcons.carCrash, color: Colors.white, size: 40.0,),
            SizedBox(width: 20.0,),
            Expanded(child: Text("Motor Accident",style: TextStyle( color: Colors.white, fontSize: 18.0),)),
            FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,),
            SizedBox(width: 40.0,),
          ],
        )
      ],
    );
  }
}

class _backgroundBoton extends StatelessWidget {
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
              child: FaIcon(FontAwesomeIcons.carCrash, size: 150.0, color: Colors.white.withOpacity(0.2),)
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
          Color(0xff6989F5),
          Color(0xff906EF5),
        ])
      ),
    );
  }
}