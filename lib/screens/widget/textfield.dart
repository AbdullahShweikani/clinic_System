import 'package:flutter/material.dart';

import '../consts/consts.dart';

class TextField1 extends StatelessWidget {
  final Color color;
  final Color backcolor;
  bool hint;
  final String title;
  final IconData icon;

  final TextEditingController controller;

  TextField1({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    this.hint = false,
    this.backcolor = Colors.blue,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        margin: const EdgeInsets.only(left: 5, bottom: 5),
        decoration: BoxDecoration(
          color: backcolor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 3, color: color, style: BorderStyle.solid),
        ),
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 24, color: Colors.white),
          obscureText: hint,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.white54),
            hintText: title,
            hintStyle: const TextStyle(fontSize: 20, color: Colors.white54),

            // contentPadding: const EdgeInsets.only(top: 10,bottom: 2),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
