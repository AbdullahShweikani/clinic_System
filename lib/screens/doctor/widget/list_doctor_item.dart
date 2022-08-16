
import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import 'appointment_button.dart';
import 'doctor_details.dart';

class ListDoctorItem extends StatefulWidget {
  final String imageDoctor;
  final String nameDoctor;

  const ListDoctorItem(
      {Key? key, required this.imageDoctor, required this.nameDoctor})
      : super(key: key);

  @override
  State<ListDoctorItem> createState() => _ListDoctorItemState();
}

class _ListDoctorItemState extends State<ListDoctorItem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: height * 0.17,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imageDoctor),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.color5.withOpacity(0.60),
                      ),
                      child: const Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 20,
                      )),
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.color5.withOpacity(0.60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Text(
                          '4.6',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: height * 0.2,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.color5,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.11,

                    child: FittedBox(
                      child: Text(
                        ' name : ${widget.nameDoctor} \n'
                        ' type : ophthalmic\n'
                        ' phone : 0997543547\n'
                        ' place : Aleppo\n'
                        ' state : free',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  AppointmentButton(
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorDetails(
                                  imageDoctor: widget.imageDoctor,
                                  nameDoctor: widget.nameDoctor)));
                    },
                    height: height*0.04,
                    textColor: Colors.blue.shade600,
                    text: 'Appointment',
                    color: Colors.white.withAlpha(30),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

