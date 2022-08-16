import 'dart:io';

import 'package:clinic_system/models/doctor_info_add_model.dart';
import 'package:clinic_system/repo/repo.dart';
import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/add_patiens.dart';
import 'package:email_validator/email_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../widget/buttonmain.dart';
import '../widget/smalltext.dart';

class AddDoctor extends StatefulWidget {
  static const String addDoctor = "AddDoctor";

  const AddDoctor({Key? key}) : super(key: key);

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  TextEditingController controllerFName = TextEditingController();
  TextEditingController controllerLName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerAddress = TextEditingController();
  TextEditingController controllerStartDate = TextEditingController();
  TextEditingController controllerGender = TextEditingController();
  TextEditingController controllerEndDate = TextEditingController();
  TextEditingController controllerBirthday = TextEditingController();
  TextEditingController controllerstatus = TextEditingController();
  TextEditingController controllerspecialize = TextEditingController();
  TextEditingController controllerevalution = TextEditingController();
  TextEditingController controllerpreviewDuration = TextEditingController();
  TextEditingController controllerexperiance = TextEditingController();
  TextEditingController controllerClinic_id = TextEditingController();
  TextEditingController controllerjobTitle = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerDay = TextEditingController();

  List<String> gender = ['male', 'female'];

  String? selectItem = 'male';

  DateTime dateTime = DateTime.now();

  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    print(image!.path);
    setState(() {
      _image = File(image.path);
    });
  }

  final formfey = GlobalKey<FormState>();

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
                child: Form(
                  key: formfey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.8,
                        child: Row(
                          children: [
                            SmallText(
                              text: 'Add Doctor',
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
                            text: "First Name",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerFName,
                            textInputType: TextInputType.datetime,
                            hinttext: "Name",
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
                            text: "Last Name",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.021,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerLName,
                            textInputType: TextInputType.datetime,
                            hinttext: "Last Name",
                            text: "Last Name",
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
                      ),  SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Last Name",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.021,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerPassword,
                            textInputType: TextInputType.datetime,
                            hinttext: "Last Name",
                            text: "Last Name",
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
                            text: "Email",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.039,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerEmail,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter Email",
                            text: "Enter Email",
                            voidCallback: (email) {
                              if (email != null &&
                                  !EmailValidator.validate(email)) {
                                return "Enter a valid Email";
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
                      //////

                      Row(
                        children: [
                          SmallText(
                            text: "Gender",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.045,
                          ),
                          Container(
                            decoration: BoxDecoration(color: AppColors.color2),
                            width: width * 0.5,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                dropdownColor: AppColors.color2,
                                isExpanded: true,
                                iconEnabledColor: AppColors.color2,
                                iconSize: 50,
                                value: selectItem,
                                items: gender.map(buildMenuItem).toList(),
                                onChanged: (value) => setState(() {
                                  this.selectItem = value;
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "status",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.053,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerstatus,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter status",
                            text: "Enter status",
                            voidCallback: (password) {
                              if (password != null && password.length < 2) {
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
                      ///////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "previewDuration",
                            color: Colors.black87,
                            size: height * 0.02,
                          ),
                          SizedBox(
                            width: width * 0.025,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerpreviewDuration,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter previewDuration",
                            text: "Enter previewDuration",
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
                      //////////////

                      ///////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "evalution",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.032,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerevalution,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter evalution",
                            text: "Enter evalution",
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
                      //////////////

                      ///////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "specialize",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.025,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerspecialize,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter specialize",
                            text: "Enter specialize",
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
                      //////////////

                      ///////////////

                      //////////////
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "experiance",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerexperiance,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter experiance",
                            text: "Enter experiance",
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
                      //////////////

                      //////////////
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Clinic_id",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerClinic_id,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter Clinic_id",
                            text: "Enter Clinic_id",
                            voidCallback: (password) {
                              if (password != null && password.length < 1) {
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
                      //////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "jobTitle",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.045,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerjobTitle,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter jobTitle",
                            text: "Enter jobTitle",
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
                      //////////////
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Address",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerAddress,
                            textInputType: TextInputType.name,
                            hinttext: "Enter Address",
                            text: "Enter Address",
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
                      ///////////////
                      //////////////

                      ///////////////
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "startDate",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.033,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerStartDate,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter startDate",
                            text: "Enter startDate",
                            voidCallback: (password) {
                              if (password != null && password.length < 3) {
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
                      /////////////
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "EndDate",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.038,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerEndDate,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter endDate",
                            text: "Enter endDate",
                            voidCallback: (password) {
                              if (password != null && password.length < 3) {
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
                      /////////////

                      SizedBox(
                        height: height * 0.03,
                      ),
                      /////////////

                      Row(
                        children: [
                          SmallText(
                            text: "Description",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.015,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerDescription,
                            textInputType: TextInputType.datetime,
                            hinttext: "Enter Description",
                            text: "Enter Description",
                            max: 5,
                            voidCallback: (password) {
                              if (password != null && password.length < 50) {
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
                            text: "Work Day",
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: width * 0.029,
                          ),
                          dashtextfiled(
                            width: width,
                            controller: controllerDay,
                            textwidth: 0.2,
                            textInputType: TextInputType.datetime,
                            hinttext: "Choose Day",
                            text: "Choose number Day",
                            voidCallback: (password) {
                              if (password != null && password.length < 8) {
                                return "Enter more than 8 characters";
                              } else {
                                return null;
                              }
                            },
                          ),
                          // SizedBox(
                          //   width: width * 0.01,
                          // ),
                          // SmallText(
                          //   text: "Start time",
                          //   color: Colors.black87,
                          // ),
                          // SizedBox(
                          //   width: width * 0.01,
                          // ),
                          // dashtextfiled(
                          //   width: width,
                          //   controller: controllerStartTime,
                          //   textwidth: 0.2,
                          //   textInputType: TextInputType.datetime,
                          //   hinttext: "Start time",
                          //   text: "11 Am",
                          //   voidCallback: (password) {
                          //     if (password != null && password.length < 50) {
                          //       return "Enter more than 8 characters";
                          //     } else {
                          //       return null;
                          //     }
                          //   },
                          // ),
                          // SizedBox(
                          //   width: width * 0.01,
                          // ),
                          // SmallText(
                          //   text: "End time",
                          //   color: Colors.black87,
                          // ),
                          // SizedBox(
                          //   width: width * 0.01,
                          // ),
                          // dashtextfiled(
                          //   width: width,
                          //   controller: controllerEndTime,
                          //   textwidth: 0.2,
                          //   textInputType: TextInputType.datetime,
                          //   hinttext: "End time",
                          //   text: "4 Pm",
                          //   voidCallback: (password) {
                          //     if (password != null && password.length < 50) {
                          //       return "Enter more than 8 characters";
                          //     } else {
                          //       return null;
                          //     }
                          //   },
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      ////////dataPicker////////////////////

                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: const Alignment(-0.78, 0),
                        child: SmallText(
                          text: "Birthday",
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Align(
                          alignment: const Alignment(0, 0),
                          child: Column(
                            children: [
                              SmallText(
                                text: DateFormat("y-M-d").format(dateTime),
                                color: Colors.white,
                              ),
                              MaterialButton(
                                color: AppColors.color2,
                                child: SmallText(
                                  text: "Press to select tour birthday",
                                  color: Colors.white,
                                  size: 22,
                                ),
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1920),
                                          lastDate: DateTime.now())
                                      .then(
                                    (value) => setState(() {
                                      dateTime = value!;
                                    }),
                                  );
                                },
                              ),
                            ],
                          )),

                      // ///////////////////image///////////////////////
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(20),
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //           height: height * 0.1,
                      //           width: width * 0.9,
                      //           decoration: const BoxDecoration(
                      //               boxShadow: [
                      //                 BoxShadow(
                      //                     color: Colors.black12,
                      //                     blurRadius: 3.2,
                      //                     spreadRadius: 4)
                      //               ],
                      //               color: Colors.white,
                      //               borderRadius: BorderRadius.only(
                      //                   topRight: Radius.circular(20),
                      //                   topLeft: Radius.circular(20))),
                      //           child: _image == null
                      //               ? const Center(
                      //               child: Text(
                      //                 'Add your image',
                      //                 style: TextStyle(fontSize: 22),
                      //               ))
                      //               : Image.file(
                      //             _image!,
                      //             fit: BoxFit.cover,
                      //           )),
                      //       SizedBox(
                      //         width: MediaQuery.of(context).size.width *
                      //             0.9,
                      //         child: ElevatedButton(
                      //             style: ElevatedButton.styleFrom(
                      //                 primary: const Color(0xff2980b9),
                      //                 shape:
                      //                 const RoundedRectangleBorder(
                      //                     borderRadius:
                      //                     BorderRadius.only(
                      //                         bottomLeft: Radius
                      //                             .circular(20),
                      //                         bottomRight: Radius
                      //                             .circular(
                      //                             20)))),
                      //             onPressed: getImage,
                      //             child: const Icon(Icons.add_a_photo)),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      ButtonMain(
                          text: 'submit',
                          backcolor: AppColors.color2,
                          we: 0.1,
                          push: () {



                            if (formfey.currentState!.validate()) {

                              Repo().addDoctor(DoctorInfoAddModel(
                                  Fname: controllerFName.text,
                                  Lname: controllerLName.text,
                                  email: controllerEmail.text,
                                  password: controllerPassword.text,
                                  Birthday:
                                  DateFormat("y-M-d").format(dateTime),
                                  Gender: selectItem.toString(),
                                  Address: controllerAddress.text,
                                  startDate: controllerStartDate.text,
                                  EndDate: controllerEndDate.text,
                                  status: controllerstatus.text,
                                  previewDuration:
                                  controllerpreviewDuration.text,
                                  evalution: controllerevalution.text,
                                  specialize: controllerspecialize.text,
                                  description: controllerDescription.text,
                                  experiance: controllerexperiance.text,
                                  ClinicId: controllerClinic_id.text,
                                  jobTitle: controllerjobTitle.text,
                                  workDay: controllerDay.text,
                                  Image: ""));
                              Navigator.pushNamed(context, AddPatien.addPatien);
                            }
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Text(
          "  " + item,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );

class dashtextfiled extends StatelessWidget {
  dashtextfiled(
      {Key? key,
      required this.width,
      this.voidCallback,
      this.isFill = false,
      this.icon,
      this.text,
      this.textInputType,
      this.max,
      this.hinttext,
      this.textwidth = 0.7,
      this.color,
      required this.controller})
      : super(key: key);

  final double width;
  final double textwidth;
  TextEditingController controller = TextEditingController();
  TextInputType? textInputType;
  String? text;
  String? hinttext;

  IconData? icon;
  bool isFill;
  Color? color;
  int? max;
  String? Function(String?)? voidCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.color2),
      width: width * textwidth,
      child: TextFormField(
        controller: controller,
        maxLines: max,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(color: Colors.white70),
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: color,
          filled: isFill,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
          labelText: text,
          labelStyle: const TextStyle(color: Colors.white70),
          border: const OutlineInputBorder(),
          suffixIcon: GestureDetector(
            child: Icon(
              icon,
              color: Colors.blueAccent,
            ),
          ),
          hintStyle: const TextStyle(color: Colors.white70),
          hintText: hinttext,
        ),
        validator: voidCallback,
      ),
    );
  }
}
