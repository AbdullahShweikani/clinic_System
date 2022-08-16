
import 'package:clinic_system/screens/widget/bigtext.dart';
import 'package:clinic_system/screens/widget/mybutton.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:flutter/material.dart';

import 'auth/widget/login.dart';
import 'auth/widget/register.dart';
import 'consts/consts.dart';
import 'home_screen/home_screen.dart';

class Home extends StatefulWidget {
  static const String home = "Home";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1,
            child: Image.asset('assets/images/welcome.png'),
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: BigText(
                    text: 'Welcome',
                    color: AppColors.colorButton,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SmallText(text: 'In this app you can go to doctor',
                color: Colors.white,),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SmallText(text: 'easy & professional',
                    color: Colors.white,),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.03,
                  right: MediaQuery.of(context).size.height * 0.03),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    MyButton(

                      text: 'Go To Home Screen',
                      icon: Icons.home_sharp,
                      onPress: () {
                        Navigator.pushNamed(context,HomeScreen.homeScreen );
                      },
                      backcolor: AppColors.colorButton,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    MyButton(
                      text: 'Log In',
                      icon: Icons.login,
                      onPress: () {
                        Navigator.pushNamed(context, Login.login);
                      },
                      backcolor: AppColors.colorButton,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
