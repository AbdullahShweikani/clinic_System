
import 'package:clinic_system/screens/profile/widget/Containersvg.dart';
import 'package:clinic_system/screens/profile/widget/icontext.dart';
import 'package:flutter/material.dart';
import '../consts/consts.dart';
import '../widget/bigtext.dart';
import '../widget/smalltext.dart';

class Profile extends StatefulWidget {
  static const String proFile = "Profile";

  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}     

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.color5, elevation: 10.0),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.color5,
          height: height * 1,
          width: width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.3,
                width: width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.045),
                  color: AppColors.color6,
                ),
                child: Padding(
                  padding: EdgeInsets.all(height * 0.01),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/images/doctor1.jpg'),
                        radius: height * 0.06,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SmallText(
                        text: "Abdullah Shweikani",
                        color: Colors.white70,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      IconText(
                          title: "AB+",
                          svg: "assets/icons/blood-donation-svgrepo-com.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              BigText(text: "Personal information",color: Colors.white70,size: height*0.02,),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                children: [
                  ContainerSvg(
                    BigTitel: "Gender",
                    SmallTitel: "Male",
                    svg: "assets/icons/gender-both-svgrepo-com.svg",
                    colorSvg: Colors.grey,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ContainerSvg(
                    BigTitel: "Email",
                    SmallTitel: "AbdullahShweikani@gmail.com",
                    svg: "assets/icons/email-svgrepo-com.svg",
                    colorSvg: Colors.grey,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ContainerSvg(
                    BigTitel: "Address",
                    SmallTitel: "Damascus",
                    svg: "assets/icons/address-location-map-svgrepo-com.svg",
                    colorSvg: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
