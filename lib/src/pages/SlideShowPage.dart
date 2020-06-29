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
          _Dot(),
          _Dot(),
          _Dot(),
          
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {

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