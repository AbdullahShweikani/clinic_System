
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/smalltext.dart';

class IconText extends StatelessWidget {
   String title;
   String svg;


   IconText(
      {Key? key,  required this.title,  required this.svg, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(svg,color: Colors.red,height: height*0.03),
        SizedBox(height: height*0.001,),

        SmallText(text: title,color: Colors.white70,size: height*0.02,),


      ],


    );
  }
}
