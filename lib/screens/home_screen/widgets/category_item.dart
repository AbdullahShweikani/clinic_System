
import 'package:flutter/material.dart';

import '../../categor_doctor/catwgordoctor.dart';
import '../../consts/consts.dart';

class CategoryItem extends StatefulWidget {
  final String type;
  final String nameType;



  const CategoryItem({
    Key? key, required this.type, required this.nameType,
  }) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (contex)=>CategoriesDoctor()));},
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.color5,
            ),
            child:   Center(
              child: Text(widget.type,style: const TextStyle(
                fontSize: 30
              ),),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              widget.nameType,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}