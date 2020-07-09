import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PinteresButton{
  final Function onPress;
  final IconData icon;

  PinteresButton({
    @required this.onPress,
    @required this.icon
  });
}

class PinteresMenu extends StatelessWidget {

  final bool mostrar ;

  PinteresMenu({this.mostrar = true});

  final List<PinteresButton> items = [
    PinteresButton(icon: Icons.pie_chart,onPress: (){print("Icon pie char");}),
    PinteresButton(icon: Icons.search,onPress: (){print("Icon search");}),
    PinteresButton(icon: Icons.notifications,onPress: (){print("Icon notifications");}),
    PinteresButton(icon: Icons.supervised_user_circle,onPress: (){print("Icon supervised_user_circle");})
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _MenuModel(),
      child: AnimatedOpacity(
        opacity: (mostrar)?1.0:0.0,
        duration: Duration(milliseconds: 250),
        child: _PinteresMenuBackground(
          child:_MenuItems(items)
        ),
      ),
    );
  }
}

class _PinteresMenuBackground extends StatelessWidget {
  final Widget child;
  _PinteresMenuBackground({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: child,

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

    final itemSeleccionado = Provider.of<_MenuModel>(context).getItemSeleccionado;

    return GestureDetector(
      onTap: (){
        Provider.of<_MenuModel>(context,listen: false).setItemSeleccionado = index;
        item.onPress();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Icon( 
          item.icon,
          size: (itemSeleccionado == index)?35.0:25.0,
          color: (itemSeleccionado == index)? Colors.black:Colors.blueGrey,
        ),
      ),
    );
  }
}

class _MenuModel with ChangeNotifier{

  int _itemSeleccionado = 0;

  int get getItemSeleccionado => _itemSeleccionado;
  set setItemSeleccionado(int i){
    _itemSeleccionado = i;
    notifyListeners();
  }
}