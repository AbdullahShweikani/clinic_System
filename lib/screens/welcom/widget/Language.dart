import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/welcom/widget/welcom.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:flutter/material.dart';

import '../../widget/smalltext.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageSetting extends StatelessWidget {
  static const String languageSetting = "LanguageSetting";

  const LanguageSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color6,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white70,
          ),
          height: 130,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(
                text: "Language".tr().toString(),
                size: 20,
                color: Colors.black87,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.locale = Locale('ar', 'AR');
                        Navigator.pushNamed(
                            context, WelcomeScreen.welcomeScreen);
                      },
                      child: Center(
                        child: SmallText(
                          color: Colors.teal,
                          text:
                              "LanguageِArabic1".tr().toString(),
                        ),
                      ),
                    ),
                    TextButton(

                      onPressed: () {
                        context.locale = Locale('dr', 'DR');
                        Navigator.pushNamed(
                            context, WelcomeScreen.welcomeScreen);
                      },

                      child: Center(
                        child: SmallText(
                          color: Colors.teal,
                          text:
                              "LanguageِArabic2".tr().toString(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
