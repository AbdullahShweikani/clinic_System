import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/add_doctor.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  static const String editProfile = "EditProfile";

  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController controllerFName=TextEditingController();
  TextEditingController controllerLName=TextEditingController();
  TextEditingController controllerEmail=TextEditingController();
  TextEditingController controllerPassword=TextEditingController();
  TextEditingController controllerGender=TextEditingController();
  TextEditingController controllerCity=TextEditingController();
  TextEditingController controllerAddress=TextEditingController();
  TextEditingController controllerweigh=TextEditingController();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color5,
        elevation: 10.0,
        title: const Center(
          child: Text("EditProfile"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width * 1,
          color: AppColors.color6,
          child: Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Edit Your Profile",
                    style: TextStyle(
                        color: Colors.white70, fontSize: width * 0.06),
                  ),
                ),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "First Name",controller:controllerFName ,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "Last Name",controller: controllerLName,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "email",controller: controllerEmail,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "Password",controller: controllerPassword,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "Gender",controller: controllerGender,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "Address",controller: controllerGender,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "weigh",controller: controllerweigh,),
                SizedBox(height: height*0.02,),
                EditInformation(height: height, width: width,text: "City",controller: controllerCity,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditInformation extends StatelessWidget {
   EditInformation({
    Key? key,
    required this.height,
    required this.width, required this.text,required this.controller,this.voidCallback, this.maxLine
  }) : super(key: key);

  final double height;
  final double width;
  final int? maxLine;
  final String text;
  TextEditingController controller=TextEditingController();
   String? Function(String?)?  voidCallback;


   @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.15,
      width: width * 0.98,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.04),
        color: AppColors.color5,
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: width * 0.02,right: width * 0.02),
        child: Row(
          children: [
            SizedBox(
              height: height*0.1,
              width: width*0.13,
              child: FittedBox(

                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white70,fontSize:10),
                ),
              ),
            ),
            SizedBox(width: width*0.02,),
            dashtextfiled(text: text, width: width,color: AppColors.color6,isFill: true,controller: controller,voidCallback: voidCallback,max:maxLine ),
          ],
        ),
      ),
    );
  }
}
