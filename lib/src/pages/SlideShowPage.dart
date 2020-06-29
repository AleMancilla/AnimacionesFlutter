import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          children: [
            Expanded(child: _Slides()),
            _Dots()
          ],
        )
        //WebsafeSvg.asset("assets/svgs/slide1.svg")
      )
        //SvgPicture.asset("assets/svgs/slide1.svg"),
    );
  }
}


class _Dots extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Dot(0),
          _Dot(1),
          _Dot(2),
          
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {

  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.0,
      height: 12.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color:  Colors.grey,
        shape: BoxShape.circle
      ),
    );
  }
}
class _Slides extends StatefulWidget {

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
      print("Page view ${pageViewController.page}");
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
        children: [
          _Slide("assets/svgs/slide1.svg"),
          _Slide("assets/svgs/slide2.svg"),
          _Slide("assets/svgs/slide3.svg")
        ],
    )
    );
  }
}

class _Slide extends StatelessWidget {

  final String svg;
  _Slide(this.svg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30.0),
      child: WebsafeSvg.asset(svg) ,
    );
    //WebsafeSvg.asset("assets/svgs/slide1.svg") ;
  }
}