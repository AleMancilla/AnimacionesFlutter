import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  AnimationController controller;//linea de tiempo
  Animation<double> rotacion;
  Animation<double> opacidad;

  @override
  void initState() {
    // TODO: implement initState

    controller = new AnimationController(vsync: this ,duration: Duration(milliseconds: 4000));

    rotacion = Tween(begin: 0.0 , end: 2 * Math.pi).animate(CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn));
    opacidad = Tween(begin: 0.1, end: 1.0).animate(controller);

    controller.addListener(() {
      print('Status: ${ controller.status }');
      if(controller.status == AnimationStatus.completed){
        controller.reverse();
      }
      //else if (controller.status == AnimationStatus.dismissed){
      //  controller.forward();
      //}
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward(); //reproduccion

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(), // opcional
      builder: (BuildContext context, Widget childRectangle) {
        //print("Rotacion : ${rotacion.value.toString()}");
        return Transform.rotate(
          angle: rotacion.value ,
          child: Opacity(
            opacity: opacidad.value,
            child: childRectangle,
          ),
        );
      },
    );
  }
}

 


class _Rectangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.green
      ),
    );
  }
}