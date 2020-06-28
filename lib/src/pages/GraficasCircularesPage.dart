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
        child: Text("Porcentaje: $porcentaje %",style: TextStyle(fontSize: 50.0),),
      ),
    );
  }
}