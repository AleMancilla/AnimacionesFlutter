import 'package:custom_painter/src/widgets/RadialProgress.dart';
import 'package:flutter/material.dart';

class GraficasCirculares extends StatefulWidget {

  @override
  _GraficasCircularesState createState() => _GraficasCircularesState();
}

class _GraficasCircularesState extends State<GraficasCirculares> {

  double porcentaje =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            porcentaje +=10;
            if(porcentaje > 100){
              porcentaje =0;
            }
          });
        }
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _circularProgresEdit(porcentaje: porcentaje,color: Colors.black,) ,
                _circularProgresEdit(porcentaje: porcentaje,color: Colors.orange,) ,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _circularProgresEdit(porcentaje: porcentaje,color: Colors.pink,) ,
                _circularProgresEdit(porcentaje: porcentaje,color: Colors.purpleAccent,) ,
              ],
            ),
          ],
        ),
        //Text("Porcentaje: $porcentaje %",style: TextStyle(fontSize: 50.0),),
      ),
    );
  }
  
}

class _circularProgresEdit extends StatelessWidget {
  const _circularProgresEdit({@required this.porcentaje, this.color = Colors.red});

  final double porcentaje;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 180.0,
      //color: Colors.red,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
        colorSecundario: Colors.red,),
    );
  }
}