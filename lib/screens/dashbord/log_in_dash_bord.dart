import 'package:clinic_system/screens/welcom/widget/intropage.dart';
import 'package:clinic_system/screens/widget/bigtext.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:clinic_system/screens/widget/smalltext.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../consts/consts.dart';
import 'main_dash_bord.dart';

class LogInDashBord extends StatefulWidget {
  static const String logIndashBord = "LogInDashBord";

  const LogInDashBord({Key? key}) : super(key: key);

  @override
  State<LogInDashBord> createState() => _LogInDashBordState();
}

final formfey10 = GlobalKey<FormState>();
final formfey30 = GlobalKey<FormState>();
bool _isCheck = false;

class _LogInDashBordState extends State<LogInDashBord> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: AppColors.color5,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(width * 0.25, 0, 0, 0),
              height: height * 1,
              width: width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.2,
                  ),
                  BigText(
                    text: "Welcome back",
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  BigText(
                    text: "Log in to your account",
                    color: Colors.white70,
                    size: height * 0.04,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Form(
                    key: formfey10,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.color6,
                      ),
                      width: width * 0.3,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(color: Colors.white70),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: const TextStyle(color: Colors.white70),
                          border: const OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            child: const Icon(null),
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                          hintText: ' Enter Email',
                        ),
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return "Enter a valid Email";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Form(
                    key: formfey30,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.color6,
                      ),
                      width: width * 0.3,
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(color: Colors.white70),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.white70),
                          border: const OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            child: const Icon(null),
                          ),
                          hintStyle: const TextStyle(color: Colors.white70),
                          hintText: ' Enter Password',
                        ),
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return "Enter Your Password";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SizedBox(
                    width: width * 0.3,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.02,
                          child: Checkbox(
                            activeColor: AppColors.color6,

                            // checkColor: AppColors.color5,
                            value: _isCheck,
                            onChanged: (bool? newValue) {
                              setState(
                                () {
                                  _isCheck = newValue!;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        BigText(
                          text: "Remember Me",
                          color: Colors.white70,
                          size: height * 0.02,
                        ),
                        SizedBox(
                          width: width * 0.11,
                        ),
                        TextButton(
                          onPressed: null,
                          child: SmallText(
                              text: "Forget Password ?",
                              color: Colors.blue,
                              size: height * 0.02),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ButtonMain(
                    text: "Log in",
                    he: 0.08,
                    backcolor: AppColors.color2,
                    we: 0.3,
                    push: () {
                      Navigator.pushNamed(context, MainDashBord.mainDashBord);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.4,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    width * 0.05, height * 0.02, width * 0.05, height * 0.2),
                child: IntroPage(
                  Text: " ",
                  Url: 'assets/lottie/15413-registro.json',
                  color: AppColors.color5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
