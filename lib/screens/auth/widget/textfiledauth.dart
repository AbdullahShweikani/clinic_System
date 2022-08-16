import 'package:flutter/material.dart';
import '../../consts/consts.dart';

class TextFieldAuth extends StatefulWidget {

  final double height;
  final double width;
  final IconData? icon;
  final Color? colorsIcon;
  final String text;
  final TextInputType? textInputType;


  const TextFieldAuth(
      {Key? key, required this.height, required this.width, this.icon, this.colorsIcon, required this.text, this.textInputType})
      : super(key: key);

  @override
  State<TextFieldAuth> createState() => _TextFieldAuthState();
}

class _TextFieldAuthState extends State<TextFieldAuth> {

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        decoration: BoxDecoration(color: AppColors.color6),
        height: widget.height * 0.056,
        width: widget.width * 0.8,
        child: TextFormField(

          style: const TextStyle(
              color: Colors.white70
          ),

          keyboardType: widget.textInputType,

          decoration: InputDecoration(
            labelText: "password",
            labelStyle: TextStyle(color: Colors.white),

            border: const OutlineInputBorder(),
            suffixIcon: GestureDetector(
              child: Icon(widget.icon
                ,
                color: widget.colorsIcon,
              ),
            ),
            hintStyle: const TextStyle(color: Colors.white70),
            hintText: widget.text,

          ),
          validator:(valu){
            if(valu!=null && valu.length<8)
              {
                return "Enter more than 8 characters";

              }else return null;


          },
        ),
      ),
    );
  }
}
