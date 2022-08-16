

import 'package:clinic_system/screens/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../home.dart';
import '../../widget/buttonmain.dart';
import '../../widget/smalltext.dart';
import 'intropage.dart';
import 'package:easy_localization/easy_localization.dart';

class WelcomeScreen extends StatefulWidget {
  static const String welcomeScreen = "WelcomeScreen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children:  [
              IntroPage(
                padd: 0.06,
                color: AppColors.color6,
                  Text: "WelcomeText1".tr().toString().toUpperCase(),
                  Url:
                      "assets/lottie/15413-registro.json"),
              IntroPage(
                padd: 0.03,
                  color: AppColors.color6,

                  Text: "WelcomeText2".tr().toString().toUpperCase(),
                  Url:
                      "assets/lottie/92309-online-doctor.json"),
              IntroPage(
                  color: AppColors.color6,

                  Text: "WelcomeText3".tr().toString().toUpperCase(),
                  Url:
                      "assets/lottie/88284-doctor-prescription.json"),
              IntroPage(
                  color: AppColors.color6,
                  padd: 0.03,

                  Text: "WelcomeText4".tr().toString().toUpperCase(),
                  Url:
                      "assets/lottie/92309-online-doctor.json"),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.98),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                 ButtonMain(
                  push: (){Navigator.pushNamed(context, Home.home);},
                   text: "ButtonWelcome2".tr().toString(),
                   backcolor: AppColors.color2,
                  we: 0.3,
                  he: 0.08,
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                ),
                GestureDetector(
                  
                  onTap: () {


                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                    if (_pageController.page == 3.0) {
                      Navigator.pushNamed(context, Home.home);
                    }
                  },
                  child: Container(
                    height: height * 0.08,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      color: AppColors.color2,

                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: SmallText(
                        color: Colors.white,
                        text: "ButtonWelcome1".tr().toString(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
