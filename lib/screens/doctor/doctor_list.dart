import 'package:flutter/material.dart';
import '../consts/consts.dart';
import 'widget/list_doctor_item.dart';

class DoctorList extends StatefulWidget {
  static const String doctorList = 'doctorList';

  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {

    Map<String, List<String>> doctorDetails = {
      'imagesDoctor': [
        'assets/images/doctor1.jpg',
        'assets/images/doctor2.jpg',
        'assets/images/doctor3.jpg',
        'assets/images/doctor1.jpg',
        'assets/images/doctor2.jpg',


      ],

      'doctorNames': [
        'Ahmad',
        'iMohamad',
        'Abd',
        'Nour',
        'alaa',
        'badr'
      ],

      'type': ['👁', '🧠', '🦷', '🦴', '👂'],
      'nameTypes': [
        'ophthalmic ',
        'Neurological ',
        'dentist',
        'Orthopedist',
        'Otologist'
      ],


      'doctorsEvaluation': ['4.1', '4.6', '3.6', '5.0', '4.9', '4.7']
    };


    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.color6,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.color6,
        centerTitle: true,
        toolbarHeight: 80,
        title:  Column(
          children: const [
            Text('Here you can find',style: TextStyle(fontSize: 25,color: Colors.white),),
            Text('the near doctor',style: TextStyle(fontSize: 25,color: Colors.white),),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: height * 0.8,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.58,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ListDoctorItem(
                  nameDoctor: doctorDetails['doctorNames']![index],
                  imageDoctor: doctorDetails['imagesDoctor']![index],
                );
              },
              itemCount: doctorDetails['imagesDoctor']?.length,
              padding: const EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
