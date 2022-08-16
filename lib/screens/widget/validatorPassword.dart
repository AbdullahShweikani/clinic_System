import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../consts/consts.dart';

class TextFieldValidatorPassword extends StatefulWidget {

  final double height;
  final double width;
  final IconData? icon;
  final Color? colorsIcon;
  final String text;
  final TextInputType? textInputType;


  const TextFieldValidatorPassword(
      {Key? key, required this.height, required this.width, this.icon, this.colorsIcon, required this.text, this.textInputType})
      : super(key: key);

  @override
  State<TextFieldValidatorPassword> createState() => _TextFieldValidatorPasswordState();
}

class _TextFieldValidatorPasswordState extends State<TextFieldValidatorPassword> {
  // final formfey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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

            }else {
              return null;
            }


          },
        ),
      ),
    );
  }
}
