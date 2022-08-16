import 'package:flutter/material.dart';

import '../consts/consts.dart';
import '../widget/buttonmain.dart';
import '../widget/smalltext.dart';
import 'add_doctor.dart';

class AddPatien extends StatefulWidget {
  static const String addPatien = "AddPatien";

  const AddPatien({Key? key}) : super(key: key);

  @override
  State<AddPatien> createState() => _AddPatienState();
}

class _AddPatienState extends State<AddPatien> {
  TextEditingController controllerFname=TextEditingController();
  TextEditingController controllerLname=TextEditingController();
  TextEditingController controllerEmail=TextEditingController();
  TextEditingController controllerPhone=TextEditingController();
  TextEditingController controllerDescription=TextEditingController();
  TextEditingController controllerClinic=TextEditingController();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(

        color: AppColors.color2,
        height: height * 1,
        width: width * 1,
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
            child: Padding(
              padding: EdgeInsets.all(height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(
                      width: width*0.8,
                      child: Row(
                        children: [
                          SmallText(
                            text: 'Add Patiens',
                            size: height * 0.04,
                            color: Colors.black87,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: height*0.02,),

                    Row(
                      children: [
                        SmallText(
                          text: "Patiens Name",
                          color: Colors.black87,
                        ),
                        SizedBox(width: width*0.02,),
                        dashtextfiled(width: width,controller: controllerFname,textInputType: TextInputType.datetime,hinttext: "Patiens Name",text: "Name",voidCallback: (password) {
                          if (password != null &&
                              password.length < 8) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      children: [
                        SmallText(
                          text: "Doctor Name",
                          color: Colors.black87,
                        ),

                        SizedBox(width: width*0.025,),
                        dashtextfiled(width: width,controller: controllerLname,textInputType: TextInputType.datetime,hinttext: "Doctor Name",text: "Doctor Name",voidCallback: (password) {
                          if (password != null &&
                              password.length < 8) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      children: [
                        SmallText(
                          text: "Email",
                          color: Colors.black87,
                        ),
                        SizedBox(width: width*0.061,),

                        SizedBox(width: width*0.02,),
                        dashtextfiled(width: width,controller: controllerEmail,textInputType: TextInputType.datetime,hinttext: "Enter Email",text: "Enter Email",voidCallback: (password) {
                          if (password != null &&
                              password.length < 8) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      children: [
                        SmallText(
                          text: "Phone",
                          color: Colors.black87,
                        ),
                        SizedBox(width: width*0.075,),
                        dashtextfiled(width: width,controller: controllerPhone,textInputType: TextInputType.datetime,hinttext: "Enter Phone",text: "Enter Phone",voidCallback: (password) {
                          if (password != null &&
                              password.length < 8) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      children: [
                        SmallText(
                          text: "Clinic",
                          color: Colors.black87,
                        ),
                        SizedBox(width: width*0.08,),
                        dashtextfiled(width: width,controller: controllerClinic,textInputType: TextInputType.datetime,hinttext: "Enter Clinic",text: "Enter Clinic",voidCallback: (password) {
                          if (password != null &&
                              password.length < 8) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      children: [
                        SmallText(
                          text: "Description",
                          color: Colors.black87,
                        ),
                        SizedBox(width: width*0.037,),
                        dashtextfiled(width: width,controller: controllerDescription,textInputType: TextInputType.datetime,hinttext: "Enter Description",text: "Enter Description",max: 5,voidCallback: (password) {
                          if (password != null &&
                              password.length < 50) {
                            return "Enter more than 8 characters";
                          } else {
                            return null;
                          }
                        },),
                      ],
                    ),
                    SizedBox(height: height*0.03,),


                    ButtonMain(text: 'Next',backcolor:AppColors.color2,we: 0.1,),

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
