import 'package:custom_painter/src/widgets/SlideShow.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _SlideShowRender()),
          Expanded(child: _SlideShowRender()),
        ],
      ),
    );
  }
}

class _SlideShowRender extends StatelessWidget {
  const _SlideShowRender({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideShow(
      colorPrimario: Colors.orange,
      bulletPrimario: 20.0,
      slides: [
        WebsafeSvg.asset("assets/svgs/slide1.svg"),
        WebsafeSvg.asset("assets/svgs/slide2.svg"),
        WebsafeSvg.asset("assets/svgs/slide3.svg"),
        WebsafeSvg.asset("assets/svgs/slide4.svg"),
        WebsafeSvg.asset("assets/svgs/slide5.svg"),
        Text("Hola Mundo"),
        Container(width: 50.0,height: 50.0,color: Colors.purpleAccent,)
      ],
      posicionDots: true,
    );
  }
}