import 'package:clinic_system/screens/Add_Session/add_Session.dart';
import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/widget/buttonmain.dart';
import 'package:flutter/material.dart';

class ConsolationPatiens extends StatefulWidget {
  static const String consolationPatiens = 'ConsolationPatiens';

  const ConsolationPatiens({Key? key}) : super(key: key);

  @override
  State<ConsolationPatiens> createState() => _ConsolationPatiensState();
}

class _ConsolationPatiensState extends State<ConsolationPatiens> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color6,
        title: const Center(child: Text("My Consulation")),
      ),
      body: Container(
        width: width * 1,
        height: height * 1,
        color: AppColors.color6,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: height*0.02,),

                Container(
                  height: height * 0.15,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.05),
                      color: AppColors.color5),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Ahmad ",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              "2010/10/2 ",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        const Text("description",style: TextStyle(color: Colors.white70),),
                        ButtonMain(
                          push: (){

                            Navigator.pushNamed(context, AddSession.addSession);
                          },
                          text: "Show",
                          we: 0.6,
                          he: 0.03,
                          backcolor: AppColors.color2,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.02,),
              ],
            );
          },
        ),
      ),
    );
  }
}
