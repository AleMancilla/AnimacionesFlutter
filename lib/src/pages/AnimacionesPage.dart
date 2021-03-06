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
  Animation<double> opacidadOut;
  Animation<double> moverDerecha;
  Animation<double> escala;

  @override
  void initState() {
    // TODO: implement initState

    controller = new AnimationController(vsync: this ,duration: Duration(milliseconds: 4000));

    rotacion = Tween(begin: 0.0 , end: 2 * Math.pi).animate(CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn));
    opacidad = Tween(begin: 0.1, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0, 0.25,curve: Curves.fastOutSlowIn)));
    opacidadOut = Tween(begin: 1.0, end: 0.1).animate(CurvedAnimation(parent: controller, curve: Interval(0.75, 1.0,curve: Curves.fastOutSlowIn)));
    moverDerecha = Tween(begin: 0.0, end: 200.0).animate(CurvedAnimation(parent: controller, curve: Curves.bounceInOut));
    escala = Tween(begin: 0.0, end: 2.0).animate(CurvedAnimation(parent: controller, curve: Curves.bounceInOut));

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
        return Opacity(
          opacity: opacidadOut.value,
          child: Transform.translate(
            offset: Offset(moverDerecha.value, 0),
            child: Transform.rotate(
              angle: rotacion.value ,
              child: Opacity(
                opacity: opacidad.value,
                child: Transform.scale(
                  scale: escala.value,
                  child: childRectangle
                ),
              ),
            ),
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