import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import '../../doctor/widget/doctor_details.dart';

class DoctorItem extends StatefulWidget {
  final String imageDoctor;
  final String doctorsEvaluation;
  final String nameDoctor;
  final double height;
  final double width;

  const DoctorItem({
    Key? key,
    required this.imageDoctor,
    required this.doctorsEvaluation,
    required this.nameDoctor, this.height=250, this.width=170,
  }) : super(key: key);

  @override
  State<DoctorItem> createState() => _DoctorItemState();
}

class _DoctorItemState extends State<DoctorItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorDetails(
              imageDoctor: widget.imageDoctor,
              nameDoctor: widget.nameDoctor,
            ),
          ),
        );
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.imageDoctor),
          ),
          borderRadius: BorderRadius.circular(25),
          color: AppColors.color5,
        ),
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
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text(
                      widget.doctorsEvaluation,
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
