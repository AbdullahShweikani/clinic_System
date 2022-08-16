import 'package:clinic_system/screens/dashbord/add_patiens.dart';
import 'package:clinic_system/screens/dashbord/profile_patiens.dart';

import 'package:flutter/material.dart';

import '../consts/consts.dart';
import '../widget/buttonmain.dart';
import '../widget/smalltext.dart';
import '../widget/textfildsearch.dart';

class Patiens extends StatefulWidget {
  const Patiens({Key? key}) : super(key: key);

  @override
  State<Patiens> createState() => _PatiensState();
}

class _PatiensState extends State<Patiens> {
  double width1 = 0.94986;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.color2,
      height: height * 1,
      width: width * width1,
      child: Center(
        child: Container(
          height: height * 0.9,
          width: width * 0.9,
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(90),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SmallText(
                text: 'Patiens',
                size: height * 0.04,
                color: Colors.black87,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(height * 0.02),
                    child: const TextFieldSearch(type: "Patiens",),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.03),
                    child: ButtonMain(
                      backcolor: AppColors.color2,
                      text: "Add",
                      he: 0.07,
                      we: 0.09,
                      push: (){
                        Navigator.pushNamed(context,AddPatien.addPatien);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.7,
                width: width * 0.85,
                decoration: BoxDecoration(
                    color: AppColors.color2,
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Padding(
                  padding: EdgeInsets.all(height * 0.02),
                  child: Column(
                    children: [
                      Divider(
                          height: height * 0.01,
                          color: Colors.white70,
                          thickness: 2.0),
                      SizedBox(
                        height: height * 0.004,
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
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "First Name",
                              size: height * 0.03,
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "Last Name",
                              size: height * 0.03,
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "Email",
                              size: height * 0.03,
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "Phone Number",
                              size: height * 0.03,
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "Action",
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
                      SizedBox(
                        height: height * 0.5,
                        width: width * 0.85,
                        child: ListView.builder(
                          padding: EdgeInsets.all(height*0.02),
                          itemCount: 30,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context,ProfilePatiens.profilePatiens);


                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(
                                        text: "1",
                                        size: height * 0.03,
                                        color: Colors.white70,
                                      ),
                                      SmallText(
                                        text: "Abdullah",
                                        size: height * 0.03,
                                        color: Colors.white70,
                                      ),
                                      SmallText(
                                        text: "Shwikany",
                                        size: height * 0.03,
                                        color: Colors.white70,
                                      ),
                                      SmallText(
                                        text: "AbdullahShwikany@gmail.com",
                                        size: height * 0.03,
                                        color: Colors.white70,
                                      ),
                                      SmallText(
                                        text: "0932473458",
                                        size: height * 0.03,
                                        color: Colors.white70,
                                      ),
                                      SmallText(
                                        text: "Action",
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
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.004,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: height*0.02,right: height*0.02,top: height*0.005),
                        child: Row(
                          children: [
                            ButtonMain(text: "5",he: 0.05,we: 0.08,backcolor: AppColors.color2,),
                            SizedBox(width: width*0.03,),
                            SmallText(text: "Showing 1 to 5 og 30 Results",color: Colors.black,size: height*0.03,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
