import 'dart:ui';
import 'package:clinic_system/screens/auth/widget/register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../consts/consts.dart';
import '../../home_screen/home_screen.dart';
import '../../widget/buttonmain.dart';
import '../../widget/smalltext.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


class Login extends StatefulWidget {
  static const String login = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formfey = GlobalKey<FormState>();
  final formfey1 = GlobalKey<FormState>();
  bool isvisbal = true;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Align(
                        alignment: const Alignment(-0.1, 0),
                        child: SmallText(
                            size: height * 0.05,
                            color: Colors.white70,
                            text: "Care your\nhealth,\n" "care your life"),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        height: height * 0.7,
                        color: AppColors.color5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(-0.76, 0),
                              child: SmallText(
                                text: "Log in",
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Form(
                              key: formfey,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              child: Container(
                                decoration:
                                BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child: TextFormField(
                                  controller: controller1,
                                  textAlignVertical: TextAlignVertical.center,
                                  style: const TextStyle(color: Colors.white70),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
// contentPadding: EdgeInsetsGeometry.infinity,
                                    labelText: "Email",
                                    labelStyle:
                                    const TextStyle(color: Colors.white70),
                                    border: const OutlineInputBorder(),
                                    suffixIcon: GestureDetector(
                                      child: const Icon(null),
                                    ),
                                    hintStyle:
                                    const TextStyle(color: Colors.white70),
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
                              height: height * 0.01,
                            ),
                            Form(
                              key: formfey1,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              child: Container(
                                decoration:
                                BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child: TextFormField(
                                  controller: controller2,

                                  obscureText: isvisbal,
                                  textAlignVertical: TextAlignVertical.center,
                                  style: const TextStyle(color: Colors.white70),
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 20.0),
                                    labelText: "password",
                                    labelStyle:
                                    const TextStyle(color: Colors.white70),
                                    border: const OutlineInputBorder(),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isvisbal = !isvisbal;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                    hintStyle:
                                    const TextStyle(color: Colors.white70),
                                    hintText: 'Password',
                                  ),
                                  validator: (password) {
                                    if (password != null &&
                                        password.length < 8) {
                                      return "Enter more than 8 characters";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),

                            // SizedBox(
                            //   height: height * 0.03,
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     final isValidForm=formfey.currentState!.validate();
                            //     final isValidForm1=formfey1.currentState!.validate();
                            //     if(isValidForm &&isValidForm1)
                            //     {
                            //       //push to another Screen
                            //
                            //     }
                            //
                            //   },
                            //   child: Container(
                            //     height: height * 0.05,
                            //     width: width * 0.3,
                            //     decoration: BoxDecoration(
                            //       color: Colors.blue[900],
                            //       borderRadius: BorderRadius.circular(20),
                            //     ),
                            //     child: Center(
                            //       child: SmallText(
                            //         text: "Submit",
                            //         color: Colors.white,
                            //         size: 20,
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            ButtonMain(
                              he: 0.1,
                              push: () {
                                Navigator.pushNamed(
                                    context, HomeScreen.homeScreen);
                                EasyLoading.showToast("status",duration: Duration(seconds: 5));
                                // EasyLoading.dismiss();
                              },
                              backcolor: AppColors.color2,
                              text: 'Let\'s Get Started',
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(-0.7, 0),
                              child: SmallText(
                                text: "Forget Password ?",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              height: height * 0.12,
                              width: width * 1,
                              child: Align(
                                alignment: const Alignment(-0.25, 0),
                                child: Padding(
                                  padding: EdgeInsets.all(height * 0.018),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SmallText(
                                        text: "Don't have an account ?",
                                        color: Colors.white,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Register.register);
                                        },
                                        child: SmallText(
                                          color: Colors.blue,
                                          text: 'Sing Up',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              height: double.infinity,
// width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/doctor11.jpg"),
                ),
                color: AppColors.color5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
