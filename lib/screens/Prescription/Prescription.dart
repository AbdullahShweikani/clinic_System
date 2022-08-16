import 'package:flutter/material.dart';

import '../consts/consts.dart';
import '../profile/EditProfile.dart';
import '../widget/buttonmain.dart';

class Prescription extends StatefulWidget {
  static const String prescription = "Prescription";

  const Prescription({Key? key}) : super(key: key);

  @override
  State<Prescription> createState() => _PrescriptionState();
}

TextEditingController controllerFMedication = TextEditingController();
TextEditingController controllerTMedication = TextEditingController();
TextEditingController controllerThMedication = TextEditingController();
TextEditingController controllerFourMedication = TextEditingController();
TextEditingController controllerFiveMedication = TextEditingController();
TextEditingController controllerSixMedication = TextEditingController();

class _PrescriptionState extends State<Prescription> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Prescription",
          style: TextStyle(color: Colors.white70),
        )),
        backgroundColor: AppColors.color6,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width * 1,
          // height: height * 1,
          color: AppColors.color6,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              EditInformation(
                height: height,
                width: width,
                text: "First Medication",
                controller: controllerFMedication,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              EditInformation(
                height: height,
                width: width,
                text: " Two Medication ",
                controller: controllerTMedication,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              EditInformation(
                height: height,
                width: width,
                text: " Three Medication ",
                controller: controllerThMedication,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              EditInformation(
                height: height,
                width: width,
                text: " Four Medication ",
                controller: controllerFourMedication,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              EditInformation(
                height: height,
                width: width,
                text: " Five Medication ",
                controller: controllerFiveMedication,
              ),              SizedBox(
                height: height * 0.02,
              ),
              EditInformation(
                height: height,
                width: width,
                text: " Six Medication ",
                controller: controllerSixMedication,
              ),

              SizedBox(
                height: height * 0.02,
              ),
              ButtonMain(
                text: "Submit",
                push: () {
                  Navigator.pushNamed(context, Prescription.prescription);
                },
                backcolor: AppColors.color2,
              ),
              SizedBox(
                height: height * 0.02,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
