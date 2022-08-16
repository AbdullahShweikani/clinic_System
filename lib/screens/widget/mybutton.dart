import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String? text;
  final IconData? icon;
  final VoidCallback? onPress;
  final Color? backcolor;

  const MyButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPress,
      this.backcolor})
      : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.085,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            elevation: 10,
            padding: const EdgeInsets.all(12),
            primary: widget.backcolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        onPressed: widget.onPress,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            Icon(widget.icon!,color: Colors.blue,),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Text(widget.text!,style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
      ),
    );
  }
}

