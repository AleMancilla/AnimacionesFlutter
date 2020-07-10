import 'package:flutter/material.dart';

class HeaderOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Colors.purpleAccent,
    );
  }
}

class HeaderRedondeado extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //color: Colors.redAccent,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0)
        )
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.purpleAccent,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class HeaderTriangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.purpleAccent,
      child: CustomPaint(
        painter: _HeaderTrianglePainter(),
      ),
    );
  }
}

class HeaderEnV extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.purpleAccent,
      child: CustomPaint(
        painter: _HeaderVPainter(),
      ),
    );
  }
}

class HeaderEnCurve extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.purpleAccent,
      child: CustomPaint(
        painter: _HeaderCurvePainter(),
      ),
    );
  }
}

class HeaderEnCurveDoble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Colors.purpleAccent,
      child: CustomPaint(
        painter: _HeaderCurveDoblePainter(),
      ),
    );
  }
}


//################################################3


class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    //propiedades
    lapiz.color = Colors.purpleAccent;
    lapiz.style = PaintingStyle.fill;//stroke 
    lapiz.strokeWidth = 10;

    final path = Path();

    //dibujar con el path y el lapiz
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height *  0.30);
    path.lineTo(size.width, size.height *  0);
    path.lineTo(0,0);
    path.lineTo(0, size.height*0.5);


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

class _HeaderTrianglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    //propiedades
    lapiz.color = Colors.purpleAccent;
    lapiz.style = PaintingStyle.fill;//stroke 
    lapiz.strokeWidth = 10;

    final path = Path();

    //dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height );
    path.lineTo(0, size.height);


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}


class _HeaderVPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    //propiedades
    lapiz.color = Colors.purpleAccent;
    lapiz.style = PaintingStyle.fill;//stroke 
    lapiz.strokeWidth = 10;

    final path = Path();

    //dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.5, size.height *0.40);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

class _HeaderCurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    //propiedades
    lapiz.color = Colors.purpleAccent;
    lapiz.style = PaintingStyle.fill;//stroke 
    lapiz.strokeWidth = 10;

    final path = Path();

    //dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.5, size.height *0.50, size.width, size.height * 0.3);
    //path.lineTo(size.width * 0.5, size.height *0.40);
    //path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

class _HeaderCurveDoblePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    //propiedades
    lapiz.color = Colors.purpleAccent;
    lapiz.style = PaintingStyle.fill;//stroke 
    lapiz.strokeWidth = 10;

    final path = Path();

    //dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width *0.25, size.height * 0.4, size.width * 0.5, size.height *0.3);
    //path.lineTo(size.width *0.25, size.height * 0.4);
    //path.lineTo(size.width * 0.5, size.height *0.3);
    path.quadraticBezierTo(size.width *0.75, size.height * 0.2, size.width, size.height * 0.3);
    //path.lineTo(size.width *0.75, size.height * 0.2);
    //path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    


    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}


class IconHeaderWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff526BF6),
            Color(0xff67ACF2)
          ]
        )
      ),
    );
  }

}