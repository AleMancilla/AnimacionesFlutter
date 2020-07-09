import 'package:flutter/material.dart';

class PinteresButton{
  final Function onPress;
  final IconData icon;

  PinteresButton({
    @required this.onPress,
    @required this.icon
  });
}

class PinteresMenu extends StatelessWidget {

  final List items = [
    PinteresButton(icon: Icons.pie_chart,onPress: (){print("Icon pie char");}),
    PinteresButton(icon: Icons.search,onPress: (){print("Icon search");}),
    PinteresButton(icon: Icons.notifications,onPress: (){print("Icon notifications");}),
    PinteresButton(icon: Icons.supervised_user_circle,onPress: (){print("Icon supervised_user_circle");})
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hola Mundo Desde El menu"),
      ),
    );
  }
}