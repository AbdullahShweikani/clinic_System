
import 'package:clinic_system/models/all_doctor_model.dart';
import 'package:clinic_system/repo/repo.dart';
import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/add_doctor.dart';
import 'package:clinic_system/screens/dashbord/profile_doctor.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:clinic_system/screens/widget/textfildsearch.dart';
import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  late Future<AllDoctorsModel> allDoctor;

  double width1 = 0.94986;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allDoctor = Repo().getAllDoctors();
  }

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
                text: 'Doctor',
                size: height * 0.04,
                color: Colors.black87,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(height * 0.02),
                    child: const TextFieldSearch(type: "Doctor",),
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
                      push: () {
                        Navigator.pushNamed(context, AddDoctor.addDoctor);
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
                    borderRadius: BorderRadius.circular(20)),
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
                        padding: EdgeInsets.all(height * 0.02),
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
                              text: "Birthday",
                              size: height * 0.03,
                              color: Colors.white70,
                            ),
                            SmallText(
                              text: "Gender",
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
                      FutureBuilder<AllDoctorsModel?>(
                        future: allDoctor,
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: Color(0xFFda765b),
                                ),
                              );
                            case ConnectionState.done:
                            default:
                              if (snapshot.hasError) {
                                final error = snapshot.error;
                                return Text('Error $error');
                              } else if (snapshot.hasData) {
                                return SizedBox(
                                  height: height * 0.5,
                                  width: width * 0.85,
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(height * 0.02),
                                    itemCount: snapshot.data?.data.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  ProfileDoctor.profileDoctor);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(

                                                  child: SmallText(
                                                    text: snapshot
                                                        .data?.data[index].id
                                                        .toString(),
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.013,
                                                ),
                                                Container(
                                                  child: SmallText(
                                                    text: snapshot
                                                        .data?.data[index].Fname,
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.05,

                                                ),
                                                Container(
                                                  child: SmallText(
                                                    text:  snapshot.data?.data[index].Lname,
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.05,

                                                ),
                                                Container(
                                                  child: SmallText(
                                                    text:  snapshot.data?.data[index].email,
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.1,

                                                ),
                                                Container(
                                                  child: SmallText(
                                                    text:  snapshot.data?.data[index].Birthday,
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.08,

                                                ),
                                                Container(
                                                  child: SmallText(
                                                    text:  snapshot.data?.data[index].Gender,
                                                    size: height * 0.03,
                                                    color: Colors.white70,
                                                  ),
                                                  width: width*0.05,

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
                                );
                              } else {
                                return const Text('no Data');
                              }
                          }
                        },
                      ),
                      // SizedBox(
                      //   height: height * 0.004,
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: height * 0.02,
                      //       right: height * 0.02,
                      //       top: height * 0.005),
                      //   child: Row(
                      //     children: [
                      //       ButtonMain(
                      //         text: "5",
                      //         he: 0.05,
                      //         we: 0.08,
                      //         backcolor: AppColors.color2,
                      //       ),
                      //       SizedBox(
                      //         width: width * 0.03,
                      //       ),
                      //       SmallText(
                      //         text: "Showing 1 to 5 og 30 Results",
                      //         color: Colors.black,
                      //         size: height * 0.03,
                      //       )
                      //     ],
                      //   ),
                      // )
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
