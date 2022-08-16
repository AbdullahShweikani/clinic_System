

import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import '../../widget/bigtext.dart';
import '../../widget/mybutton.dart';
import '../../widget/smalltext.dart';

class DoctorDetails extends StatefulWidget {
  final String imageDoctor;
  final String nameDoctor;

  const DoctorDetails(
      {Key? key, required this.imageDoctor, required this.nameDoctor})
      : super(key: key);
  static const String doctorDetails = 'DoctorDetails';

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color6,
      appBar: AppBar(
        backgroundColor: AppColors.color6,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'DoctorDetails',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.color5),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            BigText(
                              text: "Dr.${widget.nameDoctor}",
                              size: 23,
                              color: Colors.white,
                            ),
                            SmallText(
                              text: "Heart Surgeon , London ,England",
                              size: 14,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(
                                widget.imageDoctor,
                              ))),
                          height: 80,
                          width: 80,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Container1(
                          text1: "Patients",
                          text2: "500+",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container1(
                          text1: "Experience",
                          text2: "10Yrs",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyButton(
                      text: "Book DoctorDetails",
                      icon: Icons.timer,
                      onPress: () {},
                      backcolor: Colors.white.withAlpha(30),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.color5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "About Doctor",
                      color: Colors.blue,
                      size: 30,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SmallText(
                        color: Colors.white,
                        size: 20,
                        text:
                            "Maurise cajhklja aoiqmx;la\nkljlkj kjhkjh kjgtyu iutiyu\naljdoipas kacsl.amzcb cklioadkd laaoiew la;lcoids kjkdaasio a xmncm,zoa   ")
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

class Container1 extends StatelessWidget {
  final String text1;
  final String text2;

  const Container1({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallText(
            text: text1,
            size: 15,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 10,
          ),
          BigText(
            text: text2,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
