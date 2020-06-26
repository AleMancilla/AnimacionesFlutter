import 'package:flutter/material.dart';

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
  const CuadradoAnimado({
    Key key,
  }) : super(key: key);

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado> with SingleTickerProviderStateMixin{

  AnimationController aController;//linea de tiempo
  Animation<double> rotacion;

  @override
  void initState() {
    // TODO: implement initState

    aController = new AnimationController(vsync: this,duration: Duration(microseconds: 4000));

    rotacion = Tween(begin: 0.0 , end: 2.0).animate(aController);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    aController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Rectangulo();
  }
}




class _Rectangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
    );
  }
}