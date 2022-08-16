
import 'package:clinic_system/screens/home_screen/widgets/doctor_item.dart';
import 'package:clinic_system/screens/home_screen/widgets/search_button.dart';
import 'package:clinic_system/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import '../allcategories/allcategories.dart';
import '../consts/consts.dart';
import '../doctor/doctor_list.dart';
import '../drawer/widget/drawer_home.dart';
import 'widgets/category_item.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {


  Map<String, List<String>> doctorDetails = {
    'imagesDoctor': [
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
      'assets/images/doctor3.jpg',
      'assets/images/doctor1.jpg',
      'assets/images/doctor2.jpg',
      'assets/images/doctor3.jpg',

    ],
    'doctorNames': ['Ahmad', 'iMohamad', 'Abd', 'Nour', 'alaa', 'badr'],
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

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.color6,
      appBar: AppBar(
        backgroundColor: AppColors.color6,
        elevation: 0,

        actions:  [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Profile.proFile);
            },
            child: Padding(
              padding: EdgeInsets.all(height*0.0005),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                radius: 30,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.color6,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
      drawer: DrawerHome(),
      body: SingleChildScrollView(

        child: Padding(

          padding:  EdgeInsets.all(height*0.01),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
                width: width,
                child: const Text(
                  'Keep taking\ncare of your health',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SearchButton(height: height * 0.07),
              SizedBox(
                height: height * 0.27,
                width: width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '😷 Categories',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        TextButton(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          onPressed: () {Navigator.pushNamed(context, Allcate.allca);},
                          child: const Text(
                            'See all...',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.2,
                      width: width,
                      child: ListView.builder(
                        itemCount: doctorDetails['type']!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoryItem(
                              type: doctorDetails['type']![index],
                              nameType: doctorDetails['nameTypes']![index],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.33,
                width: width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '👨‍⚕️‍️Doctor near you',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, DoctorList.doctorList);
                          },
                          child: const Text(
                            'View more...',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.25,
                      width: width,
                      child: ListView.builder(
                        itemCount: doctorDetails['imagesDoctor']!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.all(height*0.001),
                            child: DoctorItem(
                              imageDoctor:
                                  doctorDetails['imagesDoctor']![index],
                              doctorsEvaluation:
                                  doctorDetails['doctorsEvaluation']![index],
                              nameDoctor: doctorDetails['doctorNames']![index],
                            ),
                          );
                        },
                      ),
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
