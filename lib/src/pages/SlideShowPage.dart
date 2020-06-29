import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: WebsafeSvg.asset("assets/svgs/slide1.svg")
      )
        //SvgPicture.asset("assets/svgs/slide1.svg"),
    );
  }
}