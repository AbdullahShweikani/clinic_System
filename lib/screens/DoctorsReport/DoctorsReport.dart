import 'package:clinic_system/screens/Prescription/Prescription.dart';
import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/profile/EditProfile.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:flutter/material.dart';

class DoctorsReport extends StatefulWidget {
  static const String doctorsReport = "DoctorsReport";

  const DoctorsReport({Key? key}) : super(key: key);

  @override
  State<DoctorsReport> createState() => _DoctorsReportState();
}
TextEditingController controllerSymptoms =TextEditingController();
TextEditingController controllerDisease=TextEditingController();
// TextEditingController controllerEmail=TextEditingController();
// TextEditingController controllerPassword=TextEditingController();
// TextEditingController controllerGender=TextEditingController();

class _DoctorsReportState extends State<DoctorsReport> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("DoctorsReport",style: TextStyle(color: Colors.white70),)),
        backgroundColor: AppColors.color6,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width * 1,
          height: height*1,

          color: AppColors.color6,
          child: Column(children: [
            SizedBox(height: height*0.03,),
            EditInformation(height: height*1, width: width, text: " Symptoms ", controller: controllerSymptoms,maxLine: (height*0.005).toInt(),),
            SizedBox(height: height*0.02,),
            EditInformation(height: height*1, width: width, text: " Disease ", controller: controllerDisease,maxLine: (height*0.005).toInt(),),
            SizedBox(height: height*0.02,),
            ButtonMain(text: "done",push:(){Navigator.pushNamed(context, Prescription.prescription);},backcolor: AppColors.color2, ),

          ],),
        ),

      ),
    );
  }
}
