//import 'package:custom_painter/src/Models/SlidesModels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:websafe_svg/websafe_svg.dart';

class SlideShow extends StatelessWidget {

  final List<Widget> slides;
  final bool posicionDots;
  final Color colorPrimario;
  final Color colorSecundario;

  SlideShow({
      @required this.slides,
      this.posicionDots = false, this.colorPrimario = Colors.blue, this.colorSecundario = Colors.grey
    });

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
        create: (_)=>_SlideShowModels(),
        child: Center(
          child: Builder(builder: (BuildContext context) {
            Provider.of<_SlideShowModels>(context).setColorPrimario = this.colorPrimario;
            Provider.of<_SlideShowModels>(context).setColorSecundario = this.colorSecundario;
            return _CreateColumn(posicionDots: posicionDots, slides: slides);
          },
          )
      )
      
    );
  }
}

class _CreateColumn extends StatelessWidget {
  const _CreateColumn({
    Key key,
    @required this.posicionDots,
    @required this.slides,
  }) : super(key: key);

  final bool posicionDots;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(this.posicionDots) _Dots(this.slides.length),
        Expanded(
          child: _Slides(this.slides)
        ),
        if(!this.posicionDots) _Dots(this.slides.length),
      ],
    );
  }
}


class _Dots extends StatelessWidget {
  final int cantidadSlides;

  _Dots(this.cantidadSlides);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 700),
      width: double.infinity,
      height: 70.0,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(cantidadSlides, (index) => _Dot(index)),
        //children: [
        //  _Dot(0),
        //  _Dot(1),
        //  _Dot(2),
        //  
        //],
      ),
    );
  }
}

class _Dot extends StatelessWidget {

  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {

    //final pageViewIndex = Provider.of<_SlideShowModels>(context).getPosicion;
    final ssModel = Provider.of<_SlideShowModels>(context);

    return Container(
      width: 12.0,
      height: 12.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: (index > ssModel.getPosicion - 0.5 && index < ssModel.getPosicion + 0.5)?
         ssModel.getColorPrimario : ssModel.getColorSecundario,
        shape: BoxShape.circle
      ),
    );
  }
}
class _Slides extends StatefulWidget {

  final List<Widget> slides;

  _Slides(this.slides);

  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {

  final pageViewController = new PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewController.addListener(() { 
      //print("Page view ${pageViewController.page}");

      Provider.of<_SlideShowModels>(context, listen: false).setPosicion = pageViewController.page;
    });


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:PageView(
        controller: pageViewController,
        //children: [
        //  _Slide("assets/svgs/slide1.svg"),
        //  _Slide("assets/svgs/slide2.svg"),
        //  _Slide("assets/svgs/slide3.svg")
        //],
        children: widget.slides.map((e) => _Slide( e ) ).toList(),
    )
    );
  }
}

class _Slide extends StatelessWidget {

  final Widget slide;
  _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30.0),
      child: slide ,
    );
    //WebsafeSvg.asset("assets/svgs/slide1.svg") ;
  }
}






class _SlideShowModels with ChangeNotifier {
  double _posicion =0;
  Color _colorPrimario = Colors.blue;
  Color _colorSecundario = Colors.grey;
  

  double get getPosicion => this._posicion;

  set setPosicion(double posicion){
    this._posicion = posicion;
    //print("####### $posicion");
    notifyListeners();
  }

  Color get getColorPrimario => this._colorPrimario;
  set setColorPrimario(Color color){
    this._colorPrimario = color;
    notifyListeners();
  }

  Color get getColorSecundario => this._colorSecundario;
  set setColorSecundario(Color color){
    this._colorSecundario = color;
    notifyListeners();
  }



  
}