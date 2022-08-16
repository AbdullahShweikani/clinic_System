
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonMain extends StatefulWidget {
  final String text;
  final double he;
  final double we;
  final VoidCallback? push;
  final Color? backcolor;

  const ButtonMain({Key? key, required this.text, this.he = 0.1, this.we = 0.8, this.push, this.backcolor=Colors.lightBlue,})
      : super(key: key);

  @override
  State<ButtonMain> createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ButtonMain> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.push,
      child: Container(
        height: height * widget.he,
        width: width * widget.we,
        decoration: BoxDecoration(
          color: widget.backcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: SmallText(
            text: widget.text,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
