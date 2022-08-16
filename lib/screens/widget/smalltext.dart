import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  String? text;
  double? size;
  double? height;
  int? maxLines;
  TextOverflow? overflow;

  SmallText({
    Key? key,
    this.color = Colors.lightBlueAccent,
    this.size = 25,
    this.maxLines=4,
    required this.text,
    this.height,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FittedBox(

        child: Text(text!,
            overflow: overflow,
            maxLines: maxLines,
            style:TextStyle(
              color: color,
              fontSize: size,
              fontWeight: FontWeight.w400,

            )),
      ),
    );
  }
}
