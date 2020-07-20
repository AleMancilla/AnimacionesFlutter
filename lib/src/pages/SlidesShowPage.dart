import 'package:custom_painter/src/theme/ThemeChanger.dart';
import 'package:custom_painter/src/widgets/SlideShow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    bool isLarge;
    if(MediaQuery.of(context).size.height>500){
      isLarge = true;
    }else{
      isLarge = false;
    }

    final children= [
          Expanded(child: _SlideShowRender()),
          Expanded(child: _SlideShowRender()),
        ];

    return Scaffold(
      body: (isLarge)?
      Column(children: children,):
      Row(children: children,),
    );
  }
}

class _SlideShowRender extends StatelessWidget {
  const _SlideShowRender({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return SlideShow(
      colorPrimario: (appTheme == ThemeData.dark())?Theme.of(context).primaryColor:Colors.orange,
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