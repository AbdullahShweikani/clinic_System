import 'package:clinic_system/screens/consts/consts.dart';
import 'package:flutter/material.dart';

class DatePatiens extends StatefulWidget {
  static const String datePatiens = 'DatePatiens';

  const DatePatiens({Key? key}) : super(key: key);

  @override
  State<DatePatiens> createState() => _DatePatiensState();
}
bool _isCheck = false;

class _DatePatiensState extends State<DatePatiens> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color6,
        title: const Center(
          child: Text("My Appointments"),
        ),
      ),
      body: Container(
        height: height * 1,
        width: width * 1,
        color: AppColors.color6,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(

              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.18,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.08),
                      color: AppColors.color5),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.03),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.6,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  const Text(
                                    "23 Aug 2021",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),

                                  const Text(
                                    "Dr.Abdullah sheikani",
                                    style: TextStyle(color: Colors.white70),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.14,
                              width: width * 0.16,
                              child:Checkbox(
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


                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
