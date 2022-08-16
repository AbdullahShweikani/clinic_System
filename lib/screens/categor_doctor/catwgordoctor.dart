
import 'package:flutter/material.dart';

import '../consts/consts.dart';
import '../home_screen/widgets/doctor_item.dart';
import '../widget/richtext.dart';

class CategoriesDoctor extends StatefulWidget {
  static const String categoriesDoctor = "CategoriesDoctor";

  const CategoriesDoctor({Key? key}) : super(key: key);

  @override
  State<CategoriesDoctor> createState() => _CategoriesDoctorState();
}

class _CategoriesDoctorState extends State<CategoriesDoctor> {
  Map<String, List<String>> doctorDetails = {
    'imagesDoctor': [
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
      'assets/images/doctor3.jpg',
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
      'assets/images/doctor3.jpg',
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
    ],
    'doctorNames': ['Ahmad', 'iMohamad', 'Abd', 'Nour', 'alaa', 'badr','Ahmad', 'iMohamad', 'Abd', 'Nour', 'alaa', 'badr'],
    'type': ['👁', '🧠', '🦷', '🦴', '👂'],
    'nameTypes': [
      'ophthalmic ',
      'Neurological ',
      'dentist',
      'Orthopedist',
      'Otologist'
    ],
    'doctorsEvaluation': ['4.1', '4.6', '3.6', '5.0', '4.9', '4.7','4.1', '4.6', '3.6', '5.0', '4.9', '4.7']
  };

  @override
  Widget build(BuildContext context) {
    // Orientation orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.color6,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.color5,
        centerTitle: true,
        // toolbarHeight: 50
      ),
      body: Container(
        color: AppColors.color6,
        width: width * 1,
        height: height * 1,
        child: Column(
          children: [
            Container(
              height: height * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.01),
                // color: AppColors.color1,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: height * 0.15,
                    width: width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.01),
                          color: AppColors.color5),

                    child: Center(
                      child: Text("jghf",
                        // widget.nameType,
                        style: TextStyle(fontSize: height * 0.09),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.005),
                        color: AppColors.colorButton),
                    child: Text("jfgv",
                      // widget.type,
                      style: TextStyle(
                          color: Colors.white70, fontSize: height * 0.025),
                    ),
                  ),

                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.02),
                      color: AppColors.color5,
                    ),
                    height: height * 0.15,
                    width: width * 0.5,
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.019),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Name of categore"),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const RichText1(
                            Text1: "Open :",
                            Text2: "8:30 AM ",
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const RichText1(
                            Text1: "close :",
                            Text2: " 4:30 AM ",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // color: AppColors.color2,
              height: height * 0.22,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return DoctorItem(
                    height: height * 0.2,
                    doctorsEvaluation: doctorDetails['doctorsEvaluation']![0],
                    imageDoctor: doctorDetails['imagesDoctor']![0],
                    nameDoctor: doctorDetails['doctorNames']![0],
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.49745,
              // color: AppColors.color3,
              child: GridView.builder(
                // physics:  ScrollableScrollPhysics(),
                itemCount: doctorDetails["imagesDoctor"]?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * 0.4,
                    child: DoctorItem(
                      doctorsEvaluation: doctorDetails['doctorsEvaluation']![index],
                      imageDoctor: doctorDetails['imagesDoctor']![index],
                      nameDoctor: doctorDetails['doctorNames']![index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
