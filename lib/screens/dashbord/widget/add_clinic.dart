import 'package:flutter/material.dart';

import '../../../repo/repo.dart';
import '../../consts/consts.dart';
import '../../widget/buttonmain.dart';
import '../../widget/smalltext.dart';
import '../add_doctor.dart';

class AddClinic extends StatefulWidget {
  static const String addClinic = "AddClinic";


  const AddClinic({Key? key}) : super(key: key);

  @override
  State<AddClinic> createState() => _AddClinicState();
}

class _AddClinicState extends State<AddClinic> {
  TextEditingController controllerSpecialize = TextEditingController();
  TextEditingController controllerName = TextEditingController();

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
                      width: width * 0.8,
                      child: Row(
                        children: [
                          SmallText(
                            text: 'Add Clinic',
                            size: height * 0.04,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Patiens Name",
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        dashtextfiled(
                          width: width,
                          controller: controllerName,
                          textInputType: TextInputType.datetime,
                          hinttext: "Clinic Name",
                          text: "Name",
                          voidCallback: (password) {
                            if (password != null && password.length < 4) {
                              return "Enter more than 8 characters";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "clinic specialize",
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        dashtextfiled(
                          width: width,
                          controller: controllerSpecialize,
                          textInputType: TextInputType.datetime,
                          hinttext: "clinic specialize",
                          text: "clinic specialize",
                          voidCallback: (password) {
                            if (password != null && password.length < 4) {
                              return "Enter more than 8 characters";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),

                    ButtonMain(
                      push: (){
                        Repo().addClinic(controllerName.text,controllerSpecialize.text);


                        },

                      text: 'Press To Add',
                      backcolor: AppColors.color2,
                      we: 0.1,

                    ),
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
