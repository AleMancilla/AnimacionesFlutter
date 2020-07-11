import 'package:flutter/material.dart';
class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ListaTareas(),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.0,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0,),
          child: Text("New",style: TextStyle(color: Color(0xff532128),fontSize: 50.0),),
        ),

        Stack(
          children: [
            
            Positioned(
              bottom: 8.0,
              child: Container(
                width: 150.0,
                height: 8.0,
                color: Color(0xffF7CDD5),
              ),
            ),
            Container(
              child: Text("List", style: TextStyle(color: Color(0xffD93A30),fontSize: 50.0,fontWeight: FontWeight.bold),),
            ),
          ],
        )
      ],
    );
  }
}

class _ListaTareas extends StatelessWidget {

    final items = [
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    _ListItem( 'Orange', Color(0xffF08F66) ),
    _ListItem( 'Family', Color(0xffF2A38A) ),
    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index)=> items[index],
    );
  }
}

class _ListItem extends StatelessWidget {

  final String titulo;
  final Color color;

  const _ListItem(this.titulo, this.color) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      // width: 100.0,
      // color: Colors.red,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(30.0),
      alignment: Alignment.centerLeft ,
      child: Text("$titulo",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(30.0)
      ),
    );
  }
}