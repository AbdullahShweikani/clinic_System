import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  String? text;
  double? size;
  TextOverflow? overflow;

  BigText({
    Key? key,
    this.color = Colors.blueAccent,
    this.size = 45,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
