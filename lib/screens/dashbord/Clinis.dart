import 'package:clinic_system/models/allClinic_model.dart';
import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/widget/add_clinic.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/material.dart';

import '../../repo/repo.dart';
import '../widget/buttonmain.dart';
import '../widget/textfildsearch.dart';

class Clinis extends StatefulWidget {
  const Clinis({Key? key}) : super(key: key);

  @override
  State<Clinis> createState() => _ClinisState();
}

double width1 = 0.94986;
late Future<AllClinicModel> allClinic;

class _ClinisState extends State<Clinis> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allClinic = Repo().getAllClinic();
  }
///htis is the new bransh
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 1,

      width: width * width1,
      color: AppColors.color2,
      child: Padding(
        padding: EdgeInsets.only(
          top: height * 0.1,
          bottom: height * 0.050,
          right: width * 0.008,
          left: width * 0.008,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(90),
            ),
          ),
          height: height * 0.8,
          width: width * 0.9,

          child: Column(

            children: [
              SmallText(
                text: 'Clinic',
                size: height * 0.04,
                color: Colors.black87,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(height * 0.02),
                    child: const TextFieldSearch(
                      type: "Clinic",
                    ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddClinic()));
                      },
                    ),
                  ),
                ],
              ),
              FutureBuilder<AllClinicModel?>(
                future: allClinic,
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
                        return Container(
                          height: height * 0.65,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              color: AppColors.color2,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListView.builder(
                            padding: EdgeInsets.only(
                              bottom: height * 0.0615,
                            ),
                            itemCount: snapshot.data!.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: height * 0.018,
                                        bottom: height * 0.017,
                                        right: width * 0.008,
                                        left: width * 0.008,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(40),
                                            ),
                                            border: Border.all(
                                                width: 8,
                                                color: AppColors.color2)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: height * 0.001,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: width * 0.02,
                                                ),
                                                Container(
                                                  height: height * 0.15,
                                                  width: width * 0.1,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.color2,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            height * 0.1),
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              height * 0.13),
                                                    ),
                                                    child: Center(
                                                      child: Icon(
                                                          Icons.account_balance,
                                                          color: Colors.white,
                                                          size: height * 0.12),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "nameClinic : " +
                                                      snapshot.data!.data[index]
                                                          .name,
                                                  style: TextStyle(
                                                      fontSize: height * 0.03,
                                                      color: Colors.black),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "specializeClinic : " +
                                                      snapshot.data!.data[index]
                                                          .specialize,
                                                  style: TextStyle(
                                                      fontSize: height * 0.03,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                          ],
                                        ),
                                        width: width * 0.75,
                                      ),
                                    ),
                                  ),
                                  MaterialButton(
                                    child: const Icon(
                                      Icons.delete,
                                      size: 50,
                                      color: Colors.white70,
                                    ),
                                    onPressed: () async {
                                      Repo().deleteClinic(snapshot
                                          .data!.data[index].id
                                          .toString());
                                    },
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
