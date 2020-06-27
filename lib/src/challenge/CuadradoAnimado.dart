import 'package:flutter/material.dart';

class AnimatedCuadrado extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: CuadradoAnimado(),
        ),
      )
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  AnimationController controller;//linea de tiempo
  Animation<double> moverDerecha;
  Animation<double> moverIzquierda;
  Animation<double> moverArriba;
  Animation<double> moverAbajo;

  @override
  void initState() {
    // TODO: implement initState

    controller = new AnimationController(vsync: this ,duration: Duration(milliseconds: 4000));
    moverDerecha    = Tween(begin: 0.0, end: 200.0).animate(CurvedAnimation(parent: controller, curve:Interval(0.0, 0.25,curve: Curves.bounceInOut) ));
    moverArriba     = Tween(begin: 0.0, end: 200.0).animate(CurvedAnimation(parent: controller, curve:Interval(0.25, 0.50,curve: Curves.bounceInOut) ));
    moverIzquierda  = Tween(begin: 0.0, end: 200.0).animate(CurvedAnimation(parent: controller, curve:Interval(0.50, 0.75,curve: Curves.bounceInOut) ));
    moverAbajo      = Tween(begin: 0.0, end: 200.0).animate(CurvedAnimation(parent: controller, curve:Interval(0.75, 1.0,curve: Curves.bounceInOut) ));
    
    

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward();

    return  AnimatedBuilder(
      animation: controller,
      child: _Cuadrado(),
      builder: (BuildContext context , Widget widgetCuadrado){
        print("Derecha = ${moverDerecha.value}  -- Arriba = ${moverArriba.value}  --  Izquierda = ${moverIzquierda.value}  --  Abajo = ${moverAbajo.value}");
        //print("Arriba = ${moverArriba.value}");
        //print("Izquierda = ${moverIzquierda.value}");
        //print("Abajo = ${moverAbajo.value}");
        return Transform.translate(
          offset: Offset(moverDerecha.value - moverIzquierda.value ,  (moverArriba.value - moverAbajo.value)*(-1)),
          child: widgetCuadrado
        );
      },
    );
  }
}

//########################################################################
//########################################################################
//########################################################################
//########################################################################

class _Cuadrado extends StatelessWidget {

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
