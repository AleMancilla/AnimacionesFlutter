import 'package:flutter/material.dart';

class BotonGordo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _backgroundBoton();
  }
}

class _backgroundBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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