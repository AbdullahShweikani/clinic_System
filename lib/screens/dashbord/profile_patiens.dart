import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/material.dart';

import '../consts/consts.dart';

class ProfilePatiens extends StatefulWidget {
  static const String profilePatiens = "ProfilePatiens";

  const ProfilePatiens({Key? key}) : super(key: key);

  @override
  State<ProfilePatiens> createState() => _ProfilePatiensState();
}

class _ProfilePatiensState extends State<ProfilePatiens> {
  double width1 = 0.94986;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: height * 1,
              width: width * 0.5,
              color: AppColors.color6,
              child: Padding(
                padding: EdgeInsets.all(height * 0.05),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.45,
                        width: width * 0.4,
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
                        child: Padding(
                          padding: EdgeInsets.all(height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/doctor1.jpg'),
                                radius: height * 0.1,
                              ),
                              SmallText(
                                text: "Sara Ahmad",
                                color: Colors.white70,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.15,
                                    width: width * 0.15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SmallText(
                                          text: "Gender :",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "Age :",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "Length :",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "width :",
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.15,
                                    width: width * 0.15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SmallText(
                                          text: "Female",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "22",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "165",
                                          color: Colors.white70,
                                        ),
                                        SmallText(
                                          text: "60",
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height * 0.45,
                        width: width * 0.4,
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
                        child: Column(
                          children: [
                            SizedBox(height: height*0.0001,),
                            Container(

                              child: Padding(
                                padding:  EdgeInsets.all(height*0.02),
                                child: SmallText(
                                  text: "Cancelled Appointments",
                                  color: Colors.black87,
                                  size: height * 0.008,
                                ),
                              ),
                              height: height * 0.14,
                              decoration: BoxDecoration(
                                  color: AppColors.color2,
                                borderRadius: BorderRadius.only(

                                  // bottomLeft: Radius.circular(height * 0.02),
                                  // bottomRight: Radius.circular(height * 0.02),
                                  topRight: Radius.circular(height * 0.02),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            Padding(
                              padding: EdgeInsets.all(height * 0.03),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/doctor1.jpg'),
                                    radius: height * 0.05,
                                  ),
                                  SizedBox(
                                    width: width * 0.08,
                                  ),
                                  Column(
                                    children: [
                                      SmallText(
                                        text: "0",
                                        color: Colors.white70,
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      SmallText(
                                        text: "Total",
                                        color: Colors.white70,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: height * 1,
              width: width * 0.5,
              color: AppColors.color6,
              child: Padding(
                padding: EdgeInsets.all(height * 0.03),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.4,
                      width: width * 0.5,
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
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.02),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SmallText(
                                  text: "Personal Detail",
                                  color: Colors.black87,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(height * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SmallText(
                                    text: "First Name",
                                    color: Colors.black87,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "Last Name",
                                    color: Colors.black87,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "Birthday",
                                    color: Colors.black87,
                                    size: height * 0.03,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(height * 0.02),

                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SmallText(
                                    text: "Sara",
                                    color: Colors.white70,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "Ahmad",
                                    color: Colors.white70,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "2002_5_1",
                                    color: Colors.white70,
                                    size: height * 0.03,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(height * 0.02),

                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SmallText(
                                    text: "Email Address",
                                    color: Colors.black87,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "Phone number",
                                    color: Colors.black87,
                                    size: height * 0.03,
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(height * 0.02),

                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SmallText(
                                    text: "Ahmadsukar@gmail.com",
                                    color: Colors.white70,
                                    size: height * 0.03,
                                  ),
                                  SmallText(
                                    text: "0932473458",
                                    color: Colors.white70,
                                    size: height * 0.03,
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.03,),
                    Container(
                      height: height * 0.5,
                      width: width * 0.5,
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
                          ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.02),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SmallText(
                                  text: "Personal Detail",
                                  color: Colors.black87,
                                ),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.all(height*0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(
                                    text: "ID",
                                    size: height * 0.03,
                                    color: Colors.black87,
                                  ),
                                  SmallText(
                                    text: "Doctor Name",
                                    size: height * 0.03,
                                    color: Colors.black87,
                                  ),
                                  SmallText(
                                    text: " Day",
                                    size: height * 0.03,
                                    color: Colors.black87,
                                  ),
                                  SmallText(
                                    text: "Date",
                                    size: height * 0.03,
                                    color: Colors.black87,
                                  ),
                                  SmallText(
                                    text: "Type",
                                    size: height * 0.03,
                                    color: Colors.white70,
                                  ),

                                ],
                              ),
                            ),
                            Divider(
                                height: height * 0.01,
                                color: Colors.black,
                                thickness: 2.0),
                            Container(
                              height: height * 0.3,
                              width: width * 0.45,
                              child: ListView.builder(
                                padding: EdgeInsets.all(height*0.02),
                                itemCount: 30,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SmallText(
                                            text: "1",
                                            size: height * 0.03,
                                            color: Colors.white70,
                                          ),
                                          SmallText(
                                            text: "Ahmad",
                                            size: height * 0.03,
                                            color: Colors.white70,
                                          ),
                                          SmallText(
                                            text: "SunDay",
                                            size: height * 0.03,
                                            color: Colors.white70,
                                          ),
                                          SmallText(
                                            text: "2020_10_3",
                                            size: height * 0.03,
                                            color: Colors.white70,
                                          ),
                                          SmallText(
                                            text: "Review",
                                            size: height * 0.03,
                                            color: Colors.white70,
                                          ),

                                        ],
                                      ),
                                      Divider(
                                          height: height * 0.01,
                                          color: Colors.black,
                                          thickness: 2.0),
                                    ],
                                  );
                                },
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
