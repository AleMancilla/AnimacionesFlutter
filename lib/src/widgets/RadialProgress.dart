import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {

  double porcentaje;

  RadialProgress(this.porcentaje);

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("${widget.porcentaje}"),
    );
  }
}