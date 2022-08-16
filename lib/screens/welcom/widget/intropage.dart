
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../consts/consts.dart';
import '../../widget/smalltext.dart';


class IntroPage extends StatelessWidget {
  final String? Text;
  final String Url;
  double padd;
  Color? color;

   IntroPage({Key? key,  this.Text,this.color, required this.Url,this.padd=0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Container(
      padding: EdgeInsets.all(  width*padd
      ),


      height: height * 0.80,
      width: double.infinity,


      child: SizedBox(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.asset(
              Url,
              fit: BoxFit.cover,
              height: height * 0.5,
              width: double.infinity,
            ),
            SmallText(text: Text,color: Colors.blue[900],),
          ],
        ),
      ),
      color: color,
    );
  }
}
