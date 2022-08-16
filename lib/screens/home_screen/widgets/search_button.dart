
import 'package:flutter/material.dart';

import '../../consts/consts.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: AppColors.color5,
          borderRadius: BorderRadius.circular(30)),
      child: const TextField(
        style: TextStyle(color: Colors.white, fontSize: 20),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: 'Search anything here ...',
            icon: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            suffixIconColor: Colors.white,
            border: InputBorder.none),
      ),
    );
  }
}