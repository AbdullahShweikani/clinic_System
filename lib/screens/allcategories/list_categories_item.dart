
import 'package:flutter/material.dart';
import '../categor_doctor/catwgordoctor.dart';
import '../consts/consts.dart';
import '../widget/richtext.dart';
import '../widget/smalltext.dart';

class ListAll extends StatefulWidget {
  final String imageDoctor;
  final String nameDoctor;
  final String type;
  final String nameType;

  const ListAll(
      {Key? key,
      required this.imageDoctor,
      required this.nameDoctor,
      required this.type,
      required this.nameType})
      : super(key: key);

  @override
  State<ListAll> createState() => _ListAllState();
}

class _ListAllState extends State<ListAll> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesDoctor()));},
      child: Stack(
        alignment: Alignment(0, 1),
        children: [
          Container(
            height: height * 0.4,
            width: width * 0.4,
            child: Align(
              alignment: Alignment(0.03, -1),
              child: SizedBox(
                height: height * 0.01,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.005),
            child: Align(
              alignment: Alignment(0, -0.1),
              child: Container(
                height: height * 0.28,
                width: width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.04),
                  color: AppColors.color5,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: height * 0.01, top: height * 0.05),
                  child: Container(
                    margin: EdgeInsets.only(top: height * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        RichText1(
                          Text1: "Open :",
                          Text2: "8:30 AM ",
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        RichText1(
                          Text1: "close :",
                          Text2: " 4:30 AM ",
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(height * 0.005),
                              color: AppColors.colorButton),
                          child: SmallText(
                            text: "The doctor supervisor :",
                            color: Colors.white70,
                            size: height * 0.02,
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: height * 0.016),
                          child: Center(
                            child: SmallText(
                              text: "Ahmad",
                              color: Colors.white70,
                              size: height * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.03, -0.8),
            child: Column(
              children: [
                Container(
                  height: height * 0.13,
                  width: height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.1),
                    color: AppColors.color5,
                  ),
                  child: Center(
                    child: Text(
                      widget.nameType,
                      style: TextStyle(fontSize: height * 0.09),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.005),
                      color: AppColors.colorButton),
                  child: Text(
                    widget.type,
                    style: TextStyle(
                        color: Colors.white70, fontSize: height * 0.025),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
