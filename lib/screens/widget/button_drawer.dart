import 'package:flutter/material.dart';

class ButtonDrawer extends StatefulWidget {
  final VoidCallback onPress;
  final String text;

  const ButtonDrawer({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  State<ButtonDrawer> createState() => _ButtonDrawerState();
}

class _ButtonDrawerState extends State<ButtonDrawer> {
  @override
  Widget build(BuildContext context) {
    return TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(color: Colors.white60)),
        onPressed: widget.onPress,
        child: Text(widget.text),
    );
  }
}
