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