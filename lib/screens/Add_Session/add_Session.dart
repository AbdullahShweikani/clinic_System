import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:flutter/material.dart';

class AddSession extends StatefulWidget {
  static const String addSession = 'AddSession';

  const AddSession({Key? key}) : super(key: key);

  @override
  State<AddSession> createState() => _AddSessionState();
}

class _AddSessionState extends State<AddSession> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color6,
        title: const Center(
          child: Text("Add Session"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height * 1,
          width: width * 1,
          color: AppColors.color6,
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.05),
                      color: AppColors.color5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Pation Detail :",
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          " Ahmad Mansor",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(width * 0.05),
                //   child: Container(
                //     height: height * 0.1,
                //     width: width * 0.5,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(width * 0.05),
                //       color: AppColors.color5,
                //     ),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: const [
                //         Text(
                //           "Review ",
                //           style: TextStyle(color: Colors.white70),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                TextFormField(
                  maxLines: (height * 0.015).toInt(),
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(color: Colors.white70),
                  keyboardType: TextInputType.streetAddress,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF12222D),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                    labelText: "Session Result",
                    labelStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.white70),
                    hintText: "Session Result",
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),

                ButtonMain(
                  text: "Submit Session",
                  backcolor: AppColors.color2,
                  he: 0.05,
                  we: 0.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
