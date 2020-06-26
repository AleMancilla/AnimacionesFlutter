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
    //path.moveTo(0, 0);
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