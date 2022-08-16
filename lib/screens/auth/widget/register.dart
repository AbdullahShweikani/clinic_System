import 'dart:ui';
import 'package:email_validator/email_validator.dart';
import 'package:clinic_system/screens/auth/widget/textfiledauth.dart';
import 'package:flutter/material.dart';
import '../../consts/consts.dart';
import '../../home_screen/home_screen.dart';
import '../../widget/buttonmain.dart';
import '../../widget/smalltext.dart';

class Register extends StatefulWidget {
  static const String register = 'Register';

  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formfey2 = GlobalKey<FormState>();
  final formfey3 = GlobalKey<FormState>();
  final formfey4 = GlobalKey<FormState>();
  final formfey5 = GlobalKey<FormState>();
  final formfey6 = GlobalKey<FormState>();
  final formfey7 = GlobalKey<FormState>();
  final formfey8 = GlobalKey<FormState>();
  final formfey9 = GlobalKey<FormState>();
  final formfey10 = GlobalKey<FormState>();
  final formfey11 = GlobalKey<FormState>();
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  TextEditingController controller3=TextEditingController();
  TextEditingController controller4=TextEditingController();
  TextEditingController controller5=TextEditingController();
  TextEditingController controller6=TextEditingController();
  TextEditingController controller7=TextEditingController();
  TextEditingController controller8=TextEditingController();
  TextEditingController controller9=TextEditingController();
  bool isvisbal=true;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 0, sigmaX: 5),
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
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 1.5,
                        // width: double.infinity,
                        color: AppColors.color5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: SmallText(
                                text: "Register",
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Align(
                              alignment: const Alignment(-0.77, 0),
                              child: SmallText(
                                text: "First Name",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Form(
                                key: formfey3,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
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

                                      labelText: "First Name",
                                      labelStyle: const TextStyle(color: Colors.white70),
                                      border: const OutlineInputBorder(),
                                      suffixIcon: GestureDetector(
                                        child: const Icon(null),
                                      ),
                                      hintStyle:
                                      const TextStyle(color: Colors.white70),
                                      hintText: 'Enter your First Name',
                                    ),
                                    validator: (name) {
                                      if (name != null &&
                                          name.length<4) {
                                        return"Enter more than 4 characters";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),

                            Align(
                              alignment: const Alignment(-0.78, 0),
                              child: SmallText(
                                text: "Last Name",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Form(
                                key: formfey4,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                child: Container(
                                  decoration:
                                  BoxDecoration(color: AppColors.color6),

                                  width: width * 0.8,
                                  child: TextFormField(
                                    controller: controller2,
                                    textAlignVertical: TextAlignVertical.center,
                                    style: const TextStyle(color: Colors.white70),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(

                                      labelText: "Last Name",
                                      labelStyle: const TextStyle(color: Colors.white70),
                                      border: const OutlineInputBorder(),
                                      suffixIcon: GestureDetector(
                                        child: const Icon(null),
                                      ),
                                      hintStyle:
                                      const TextStyle(color: Colors.white70),
                                      hintText: 'Enter your First Name',
                                    ),
                                    validator: (name) {
                                      if (name != null &&
                                          name.length<4) {
                                        return"Enter more than 4 characters";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(-0.81, 0),
                              child: SmallText(
                                text: "Email",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child:
                                Form(
                                  key: formfey5,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(color: AppColors.color6),

                                    width: width * 0.8,
                                    child: TextFormField(
                                      controller: controller3,
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
                                        hintStyle:
                                        const TextStyle(color: Colors.white70),
                                        hintText: 'Enter your Email',
                                      ),
                                      validator: (email) {
                                        if (email != null &&
                                            !EmailValidator.validate(email)) {
                                          return"Enter a valid Email";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),






                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(-0.78, 0),
                              child: SmallText(
                                text: "Password",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Form(
                                key: formfey6,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                child: Container(
                                  decoration:
                                  BoxDecoration(color: AppColors.color6),

                                  width: width * 0.8,
                                  child: TextFormField(
                                    controller: controller4,
                                    obscureText: isvisbal,


                                    textAlignVertical: TextAlignVertical.center,
                                    style: const TextStyle(color: Colors.white70),
                                    keyboardType:  TextInputType.number,
                                    decoration: InputDecoration(

                                      labelText: "Password",
                                      labelStyle: const TextStyle(color: Colors.white70),
                                      border: const OutlineInputBorder(),
                                      suffixIcon: GestureDetector(
                                        onTap: (){
                                          setState(() {

                                            isvisbal=!isvisbal;

                                          });

                                        },
                                        child: const Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      hintStyle:
                                      const TextStyle(color: Colors.white70),
                                      hintText: 'Enter Password',
                                    ),
                                    validator: (password) {
                                      if (password != null &&
                                          password.length<8) {
                                        return"Enter more than 8 characters";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Align(
                              alignment: const Alignment(-0.8, 0),
                              child: SmallText(
                                text: "Address",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child:
                                Form(
                                  key: formfey7,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(color: AppColors.color6),

                                    width: width * 0.8,
                                    child: TextFormField(
                                      controller: controller5,

                                      textAlignVertical: TextAlignVertical.center,
                                      style: const TextStyle(color: Colors.white70),
                                      keyboardType:  TextInputType.visiblePassword,
                                      decoration: InputDecoration(

                                        labelText: "Enter Address",
                                        labelStyle: const TextStyle(color: Colors.white70),
                                        border: const OutlineInputBorder(),
                                        suffixIcon: GestureDetector(
                                          child: const Icon(null),
                                        ),
                                        hintStyle:
                                        const TextStyle(color: Colors.white70),
                                        hintText:  'Confirmation Your Password',
                                      ),
                                      validator: (Cpassword) {
                                        if (Cpassword != null &&
                                            Cpassword.length<4) {
                                          return"zEnter more than 4 characters";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),






                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(-0.8, 0),
                              child: SmallText(
                                text: "weigh",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Container(
                                decoration:
                                BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child:
                                Form(
                                  key: formfey8,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(color: AppColors.color6),

                                    width: width * 0.8,
                                    child: TextFormField(
                                      controller: controller6,

                                      textAlignVertical: TextAlignVertical.center,
                                      style: const TextStyle(color: Colors.white70),
                                      keyboardType:  TextInputType.number,
                                      decoration: const InputDecoration(

                                        labelText: "Enter weigh",
                                        labelStyle: TextStyle(color: Colors.white70),
                                        border: OutlineInputBorder(),


                                        hintStyle:
                                        TextStyle(color: Colors.white70),
                                        hintText:  'Confirmation Your Password',
                                      ),
                                      validator: (Cpassword) {
                                        if (Cpassword != null &&
                                            Cpassword.length<3) {
                                          return"zEnter more than 3 characters";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),






                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(-0.8, 0),
                              child: SmallText(
                                text: "Description",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Align(
                              alignment: const Alignment(0, 0),
                              child: Container(
                                decoration:
                                BoxDecoration(color: AppColors.color6),
                                width: width * 0.8,
                                child:
                                Form(
                                  key: formfey9,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(color: AppColors.color6),

                                    width: width * 0.8,
                                    child: TextFormField(
                                      controller: controller7,

                                      textAlignVertical: TextAlignVertical.center,
                                      style: const TextStyle(color: Colors.white70),
                                      keyboardType:  TextInputType.visiblePassword,
                                      decoration: InputDecoration(

                                        labelText: "Enter Description",
                                        labelStyle: const TextStyle(color: Colors.white70),
                                        border: const OutlineInputBorder(),
                                        suffixIcon: GestureDetector(
                                          child: const Icon(null),
                                        ),
                                        hintStyle:
                                        const TextStyle(color: Colors.white70),
                                        hintText:  'Confirmation Your Password',
                                      ),
                                      validator: (Cpassword) {
                                        if (Cpassword != null &&
                                            Cpassword.length<8) {
                                          return"zEnter more than 8 characters";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ),






                              ),
                            ),





                            SizedBox(
                              height: height * 0.03,
                            ),
                             ButtonMain(
                                 push: (){
                                   print(controller1);


                                   Navigator.pushNamed(context, HomeScreen.homeScreen);},
backcolor: AppColors.color2,
                                 text: "Register"),
                            SizedBox(
                              height: height * 0.03,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              height: height * 1,
              width: double.infinity,
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




//   Align(
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     decoration:
//                                         BoxDecoration(color: AppColors.color6),
//                                     height: height * 0.056,
//                                     width: width * 0.2,
//                                     child:
//
//
//                                     TextFieldAuth(width: width,height: height,text: 'day',textInputType: TextInputType.visiblePassword,)
//
//
//
//
//
//
//                                   ),
//                                   SizedBox(
//                                     width: width * 0.02,
//                                   ),
//                                   Container(
//                                     decoration:
//                                         BoxDecoration(color: AppColors.color6),
//                                     height: height * 0.056,
//                                     width: width * 0.2,
//                                     child:                                     TextFieldAuth(width: width,height: height,text: 'month',textInputType: TextInputType.visiblePassword,)
//
//                                   ),
//                                   SizedBox(
//                                     width: width * 0.02,
//                                   ),
//                                   Container(
//                                     decoration:
//                                         BoxDecoration(color: AppColors.color6),
//                                     height: height * 0.056,
//                                     width: width * 0.2,
//                                     child:                                     TextFieldAuth(width: width,height: height,text: 'years',textInputType: TextInputType.visiblePassword,)
//
//                                   ),
//                                 ],
//                               ),
//                             ),