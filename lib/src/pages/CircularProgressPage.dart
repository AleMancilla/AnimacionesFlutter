import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CircularProgressPage extends StatefulWidget {

  @override
  _CircularProgressPageState createState() => _CircularProgressPageState();
}

class _CircularProgressPageState extends State<CircularProgressPage> with SingleTickerProviderStateMixin{

  double porc = 0.0;
  double nuevoPorcentaje = 0.0;
  AnimationController controller ;

  @override
  void initState() { 
    super.initState();
    controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 800));

    controller.addListener(() {
      porc = lerpDouble(porc, nuevoPorcentaje, controller.value);
      setState(() {
        
      });
    });
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          porc = nuevoPorcentaje;
          nuevoPorcentaje +=10;
          if(nuevoPorcentaje>100){
            nuevoPorcentaje=0;
            porc =0;
          }
          controller.forward(from: 0.0);
          setState(() {
          });
        }
      ),
       body: Center(
         child: Container(
           padding: EdgeInsets.all(5.0),
           width: 300.0,
           height: 300.0,
           //color: Colors.red,
           child: CustomPaint(
             painter: _MiRadialProgress(porc),
           ),
         ),
       ),
    );
  }
}

class _MiRadialProgress extends CustomPainter{
  final porcentaje ;
  _MiRadialProgress(this.porcentaje);

  @override
  void paint(Canvas canvas, Size size) {

    // TODO: implement paint
    //lapiz de circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

      Offset center = new Offset(size.width / 2, size.height /2);
      double radio = min(size.width / 2,size.height/ 2);

      canvas.drawCircle(center, radio, paint);

      //## arco
      final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = Colors.pink
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