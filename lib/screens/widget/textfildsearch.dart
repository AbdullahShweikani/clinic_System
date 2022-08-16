import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  final String type;
  const TextFieldSearch({Key? key, required this.type}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: height * 0.1,
      width: width * 0.6,

      child: TextField(
        decoration: InputDecoration(
            hintText: "Search For "+type,
            hintStyle: const TextStyle(
              color: Colors.black87,fontSize: 20,
            ),
            filled: true,
            fillColor: Colors.black12,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(height*0.03,
              ),
            ),
            prefixIcon: const Icon(Icons.search,color: Colors.black87,)

        ),
        // child: ,
      ),);
  }
}
