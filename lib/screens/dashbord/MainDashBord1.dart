import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/add_doctor.dart';
import 'package:clinic_system/screens/dashbord/add_patiens.dart';
import 'package:clinic_system/screens/dashbord/widget/add_clinic.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/material.dart';

import '../widget/buttonmain.dart';

class MainDashBord1 extends StatefulWidget {
  const MainDashBord1({Key? key}) : super(key: key);

  @override
  State<MainDashBord1> createState() => _MainDashBord1State();
}

List<Color> colorer = [Colors.red, Colors.pink, Colors.blue, Colors.green];
Map<String, List<String>> FirstList = {
  'Title': [
    'Done Appointments',
    'Patiens',
    'Pending appointments',
    'Pending appointments',
  ],
  'body': [
    'Total ',
    'Monthly ',
    'Today',
    'Total',
  ],
  'name': [
    'ophthalmic ',
    'Neurological ',
    'dentist',
    'Orthopedist',
    'Otologist'
  ],
  'number': ['0', '1', '1', '4','3']
};

double width1 = 0.94986;

class _MainDashBord1State extends State<MainDashBord1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.1,
          width: width * width1,
          color: AppColors.color6,
          child: Row(
            children: [
              SizedBox(
                width: width * 0.05,
              ),
              SmallText(
                text: "Overview",
                color: Colors.white,
              ),
              SizedBox(
                width: width * 0.45,
              ),
              GestureDetector(

                child: ButtonMain(
                  backcolor: AppColors.color2,
push: (){Navigator.pushNamed(context, AddClinic.addClinic);},
                  text: 'Add Clinic',
                  he: 0.04,
                  we: 0.15,
                ),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              GestureDetector(
                child: ButtonMain(
                  text: 'Add Patients',
                  he: 0.04,
                  backcolor: AppColors.color2,
                  push:  (){

              Navigator.pushNamed(context,AddPatien.addPatien);
              },

                  we: 0.1,
                ),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              GestureDetector(
                child: ButtonMain(
                  text: 'Add Doctors',
                  backcolor: AppColors.color2,
                  push:  (){

                    Navigator.pushNamed(context,AddDoctor.addDoctor);
                  },
                  he: 0.04,
                  we: 0.1,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.3,
          width: width * width1,
          color: AppColors.color6,
          child: ListView.builder(
            padding: EdgeInsets.all(height * 0.03),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,

            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    width: width * 0.215,
                    height: height * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(height * 0.02),
                          bottomLeft: Radius.circular(height * 0.02),
                        ),
                      color: Colors.grey[300],),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.09,
                          width: width * 0.215,
                          decoration: BoxDecoration(
                            color: colorer[index],
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(height * 0.02),
                              bottomLeft: Radius.circular(height * 0.02),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              FirstList["Title"]![index],
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: height * 0.03),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.02,
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/doctor1.jpg'),
                              radius: height * 0.05,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              children: [
                                Text(
                                  FirstList["number"]![index],
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: height * 0.02),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  FirstList["body"]![index],
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: height * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                ],
              );
            },
          ),
        ),
        Container(
          height: height * 0.6,
          width: width * width1,
          color: AppColors.color6,
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.01,
                ),
                Container(
                  height: height * 0.4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 12,
                    color: AppColors.color2,
                  )
                ),
                  width: width * 0.3,
                  child: Column(
                    children: [
                      SizedBox(height: height*0.01,),
                      SmallText(
                        text: "Appointment Per Week",
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.015,
                ),
                Container(
                  height: height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 12,
                        color: AppColors.color2,
                      )
                  ),
                  width: width * 0.3,
                  child: Column(
                    children: [
                      SizedBox(height: height*0.01,),
                      SmallText(
                        text: "Pending Appointment",
                        color: Colors.black87,
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        padding: EdgeInsets.all(height*0.02),
                        height: height*0.3,
                        width: width*0.3,
                        child: ListView.builder(
                          itemCount: FirstList["name"]?.length,
                          itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                SmallText(text: FirstList["name"]![index],color: Colors.black87,size: height*0.03,),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  CircleAvatar(
                                    child: Text(FirstList["number"]![index],),
                                    radius: height*0.02,
                                  ),
                              ],),
                              const Divider(color: Colors.black87,height: 5),
                            ],
                          );
                        },),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.015,
                ),
                Container(
                  height: height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 12,
                        color: AppColors.color2,
                      )
                  ),
                  width: width * 0.3,
                  child: Column(
                    children: [
                      SizedBox(height: height*0.01,),
                      SmallText(
                        text: "Patients",
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
