import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {

  double porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;

  RadialProgress({this.porcentaje, this.colorPrimario = Colors.blue, this.colorSecundario = Colors.grey});

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> with SingleTickerProviderStateMixin{

  AnimationController controller;
  double porcentajeAnterior;

  @override
  void initState() {
    // TODO: implement initState

    porcentajeAnterior = widget.porcentaje;
    controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 400));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {

    controller.forward(from: 0.0);
    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller, 
      builder: (BuildContext context , Widget child){
        return Container(
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: _MiRadialProgress(
                widget.porcentaje,
                widget.colorPrimario,
                widget.colorSecundario
                ),
            ),
          );
      } ,
    );

   
  }
}




class _MiRadialProgress extends CustomPainter{
  final porcentaje ;
  final Color colorPrimario;
  final Color colorSecundario;

  _MiRadialProgress(
    this.porcentaje, this.colorPrimario , this.colorSecundario
  );

  @override
  void paint(Canvas canvas, Size size) {

    // TODO: implement paint
    //lapiz de circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = colorSecundario
      ..style = PaintingStyle.stroke;

      Offset center = new Offset(size.width / 2, size.height /2);
      double radio = min(size.width / 2,size.height/ 2);

      canvas.drawCircle(center, radio, paint);

      //## arco
      final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = colorPrimario
      ..style = PaintingStyle.stroke;

      //parte que se debera ir llenando
      double arcAngle =   2* pi *(porcentaje /100);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radio), 
        -pi /2, 
        arcAngle, 
        false, 
        paintArco);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>true;
  
}