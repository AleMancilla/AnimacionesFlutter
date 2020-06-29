import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: _Slides()
        //WebsafeSvg.asset("assets/svgs/slide1.svg")
      )
        //SvgPicture.asset("assets/svgs/slide1.svg"),
    );
  }
}

class _Slides extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:PageView(
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