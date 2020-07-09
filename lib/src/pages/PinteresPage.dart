import 'package:custom_painter/src/widgets/Pinteres_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
class PinteresPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> _MenuModel(),
      child: Scaffold(
        body: Stack(
          children: [
            PinteresGrid(),
            _PinteresMenuLocation(),
          ],
        ),
          // body: PinteresMenu(),
      ),
    );
  }
}

class _PinteresMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mostrar = Provider.of<_MenuModel>(context).getMostrar;
    return Positioned(
      bottom: 30.0,
      child: Container(
       // color: Colors.red,
        width: size.width,
        child: Align(
          child: PinteresMenu(mostrar: mostrar,)
        )
      )
    );
  }
}

class PinteresGrid extends StatefulWidget {
  
  @override
  _PinteresGridState createState() => _PinteresGridState();
}

class _PinteresGridState extends State<PinteresGrid> {
  final List<int> items = List.generate(200, (index) => index);
  ScrollController controller =  new ScrollController();
  double scrollAnterior =0;

  @override
  void initState() {
    // TODO: implement initState
    controller.addListener(() { 
      //print("ScrollListener: ${controller.offset}");
      if(controller.offset>scrollAnterior){
        Provider.of<_MenuModel>(context,listen: false).setMostrar = false;
      }else{
        Provider.of<_MenuModel>(context,listen: false).setMostrar = true;
      }
      scrollAnterior = controller.offset;
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      controller: controller,
      crossAxisCount: 4,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => _PinteresItem(index),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 3),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

class _PinteresItem extends StatelessWidget {

  final int index;

  _PinteresItem(this.index);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0)
      ),
        //color: Colors.green,
        child: new Center(
          child: new CircleAvatar(
            backgroundColor: Colors.white,
            child: new Text('$index'),
          ),
        ));
  }
}

class _MenuModel with ChangeNotifier{
  bool _mostrar = true;

  bool get getMostrar => this._mostrar;
  set setMostrar(bool estado){
    this._mostrar = estado;
    notifyListeners();
  }
}