import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/widget/bigtext.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/richtext.dart';

class ProfileDoctor extends StatefulWidget {
  static const String profileDoctor = "ProfileDoctor";

  const ProfileDoctor({Key? key}) : super(key: key);

  @override
  State<ProfileDoctor> createState() => _ProfileDoctorState();
}

class _ProfileDoctorState extends State<ProfileDoctor> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height * 1,
        width: width * 1,
        color: AppColors.color6,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(height * 0.03),
            child: SingleChildScrollView(
              child: Container(
                height: height * 0.9,
                width: width * 0.9,
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(height * 0.03),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(height * 0.02),
                           decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius: BorderRadius.only(
                               bottomRight: Radius.circular(10),
                               bottomLeft: Radius.circular(10),
                               topLeft: Radius.circular(10),
                               topRight: Radius.circular(40),
                             ),
                             border: Border.all(
                               width: 8,
                               color: AppColors.color2
                             )
                           ),
                            height: height * 0.35,
                            width: width * 0.48,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.edit),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/doctor1.jpg'),
                                          radius: height * 0.1,
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Container(
                                          height: height * 0.2,
                                          width: width * 0.26,
                                          color: AppColors.color2,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.all(height * 0.02),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SmallText(
                                                  text: "Ahmad Sukar ",
                                                  color: Colors.white70,
                                                  size: height * 0.03,
                                                ),
                                                SmallText(
                                                  text: "ophthalmic ",
                                                  color: Colors.white70,
                                                  size: height * 0.03,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.email_outlined),
                                                    SmallText(
                                                      text: "Ahmad@gmail.com",
                                                      height: height * 0.02,
                                                      color: Colors.white70,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.phone),
                                                    SmallText(
                                                      text: "0932473458",
                                                      height: height * 0.02,
                                                      color: Colors.white70,

                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(40),
                                    ),
                                    border: Border.all(
                                        width: 8,
                                        color: AppColors.color2
                                    )
                                ),
                                padding: EdgeInsets.all(height * 0.02),
                                height: height * 0.35,
                                width: width * 0.33,

                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [Icon(Icons.edit)],
                                    ),
                                    Column(
                                      children: [
                                        Container(

                                          height: height * 0.1,
                                          width: width * 0.2,
                                          child: Image.asset(
                                              "assets/images/doctor1.jpg"),
                                        ),
                                        BigText(text: "WorkDay",color: Colors.black87,size: height*0.03,),
                                        SizedBox(height: height*0.01,),

                                        const RichText1(Text1: "Saturday :",Text2: "10:00 am to  2:00 pm",),
                                        SizedBox(height: height*0.01,),
                                        const RichText1(Text1: "sunday :",Text2: "9:00 am to  4:00 pm",),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(height * 0.03),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(40),
                            ),
                            border: Border.all(
                                width: 8,
                                color: AppColors.color2
                            )
                        ),
                        height: height * 0.3,
                        width: width * 0.5,

                        child: Padding(
                          padding: EdgeInsets.all(height * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Description",
                                color: Colors.black87,
                              ),
                              SizedBox(
                                height: height * 0.15,
                                child: FittedBox(
                                  child: Text(
                                    "thng and if you ned do mor you can conacted with him\n andd do mor you can conacted with him an call\nd do mor you can conacted with him an him master",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
