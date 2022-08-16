
import 'package:flutter/material.dart';

class AppointmentButton extends StatefulWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPress;
  final double? height;

  const AppointmentButton(
      {Key? key,
      required this.text,
      required this.onPress,
      this.height,
      this.color,
      this.textColor})
      : super(key: key);

  @override
  State<AppointmentButton> createState() => _AppointmentButtonState();
}

class _AppointmentButtonState extends State<AppointmentButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: widget.height,
      onPressed: widget.onPress,
      child: Text(widget.text),
      color: widget.color,
      textColor: widget.textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      minWidth: MediaQuery.of(context).size.width * 0.8,
      elevation: 10,
    );
  }
}
