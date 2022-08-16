
import 'package:flutter/material.dart';

import '../consts/consts.dart';

class RichText1 extends StatelessWidget {
  final String? Text1;
  final String? Text2;

  const RichText1({Key? key, this.Text1, this.Text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: height * 0.025,
        ),
        children: [
          TextSpan(
            text: Text1,
            style: TextStyle(
              color: AppColors.colorButton,
            ),
          ),
          TextSpan(text: Text2, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
