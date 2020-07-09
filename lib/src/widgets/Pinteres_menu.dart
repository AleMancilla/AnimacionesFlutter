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

  final List<PinteresButton> items = [
    PinteresButton(icon: Icons.pie_chart,onPress: (){print("Icon pie char");}),
    PinteresButton(icon: Icons.search,onPress: (){print("Icon search");}),
    PinteresButton(icon: Icons.notifications,onPress: (){print("Icon notifications");}),
    PinteresButton(icon: Icons.supervised_user_circle,onPress: (){print("Icon supervised_user_circle");})
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: _MenuItems(items),

        width: 250.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              //offset: Offset(10, 10),
              blurRadius: 10.0,
              spreadRadius: -5
            )
          ]
        ),
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {

  final List<PinteresButton> menuItems;

  _MenuItems(this.menuItems);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length,(i)=> _PinteresMenuButton(i,menuItems[i])),
    );
  }
}

class _PinteresMenuButton extends StatelessWidget {
  final int index;
  final PinteresButton item;
  _PinteresMenuButton(this.index,this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon( item.icon),
    );
  }
}