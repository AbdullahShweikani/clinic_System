
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../consts/consts.dart';
import '../../widget/bigtext.dart';
import '../../widget/smalltext.dart';

class ContainerSvg extends StatelessWidget {
  String? BigTitel;
  String? SmallTitel;
  String? svg;
  Color colorSvg;

  ContainerSvg(
      {Key? key,
      this.BigTitel,
      this.SmallTitel,
      this.svg,
      this.colorSvg = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height * 0.04),
        color: AppColors.color6,
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: height*0.02,right: height*0.02),
        child: Row(
          children: [
            SvgPicture.asset(svg!, color: colorSvg, height: height * 0.05),
            SizedBox(
              width: width * 0.03,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    height: height * 0.04,
                    child: Center(
                        child: BigText(
                      text: BigTitel,
                      color: Colors.white70,
                      size: height * 0.03,
                    ))),
                Container(
                  height: height * 0.04,
                  child: Center(
                    child: SmallText(
                      text: SmallTitel,
                      color: Colors.white70,
                      size: height * 0.02,
                    ),

                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
