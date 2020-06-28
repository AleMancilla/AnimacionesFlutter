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
        child: Container(
          width: 400.0,
          height: 400.0,
          //color: Colors.red,
          child: RadialProgress(porcentaje: porcentaje,colorPrimario: Colors.orange,colorSecundario: Colors.red,),
        ) 
        //Text("Porcentaje: $porcentaje %",style: TextStyle(fontSize: 50.0),),
      ),
    );
  }
}