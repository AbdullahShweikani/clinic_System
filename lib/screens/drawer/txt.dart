
import 'package:flutter/material.dart';

class Txt extends StatefulWidget {

  final bool useoverflow;
  final bool upperCaseFirst;
  final bool useQuotes;
  final bool useFiler;
  final Color color;

  final TextAlign textAlign;
  final bool underlined;
  final bool fullUpperCase;
  final bool fullLowerCase;
  final dynamic text;

  const Txt({
     Key? key,

    this.color=Colors.blueGrey,

    this.useoverflow = false,
    this.upperCaseFirst = false,
    this.useQuotes = false,
    this.useFiler = false,
    this.underlined = false,
    this.fullUpperCase = false,
    this.fullLowerCase = false,
    @required this.text, this.textAlign=TextAlign.center,

  }) : super(key: key);

  @override
  _TxtState createState() => _TxtState();
}

class _TxtState extends State<Txt> {
  String finalText = "Null";

  @override
  Widget build(BuildContext context) {
    bool isString = widget.text is String;
    bool isNumber = widget.text is double || widget.text is int;
    bool isOthers = isString==false && isNumber==false;

    if (isString)  finalText = widget.text ?? "Error";//when you forgot to set a value, "Error" will be shown
    if (isNumber) finalText = '${widget.text}';
    if (isOthers)  finalText = "Invalid input ${widget.text}";




//John → john
    if(widget.fullLowerCase) finalText = finalText.toLowerCase();

//John → JOHN
    if (widget.fullUpperCase) finalText = finalText.toUpperCase();


//JOHN or john → John
    if (widget.upperCaseFirst && finalText.length > 1)  finalText = "${finalText[0].toUpperCase()}${finalText.substring(1, finalText.length).toLowerCase()}";

//John → "John"
    if (widget.useQuotes) finalText = "❝$finalText❞";

//John*_-#![] → John
    if (widget.useFiler) finalText = finalText.replaceAll("*", "").replaceAll("_", "").replaceAll("-", "").replaceAll("#", "").replaceAll("\n", "").replaceAll("!", "").replaceAll('[', '').replaceAll(']', '');


    return Text((finalText ).toString(),
        overflow: widget.useoverflow ? TextOverflow.ellipsis : null,
        textAlign: widget.textAlign,

        textScaleFactor: 1,// This will keep your text size constant, when the user changes his device text size,
        style: TextStyle(
          decoration: widget.underlined ? TextDecoration.underline : null,//to underlined a text
          color: widget.color,

        ));
  }
}
