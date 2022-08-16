import 'package:clinic_system/screens/consts/consts.dart';
import 'package:clinic_system/screens/dashbord/Calender.dart';
import 'package:clinic_system/screens/dashbord/Clinis.dart';
import 'package:clinic_system/screens/dashbord/Doctor.dart';
import 'package:clinic_system/screens/dashbord/MainDashBord1.dart';
import 'package:clinic_system/screens/dashbord/Patiens.dart';
import 'package:flutter/material.dart';

import 'Appointments.dart';

class MainDashBord extends StatefulWidget {
  static const String mainDashBord = "MainDashBord";

  const MainDashBord({Key? key}) : super(key: key);

  @override
  State<MainDashBord> createState() => _MainDashBordState();
}

class _MainDashBordState extends State<MainDashBord> {
   List<Widget> MainContent = [
     MainDashBord1(),
     Doctor(),
     Clinis(),
    Patiens(),

     Appointments(),
     Calender(),
  ];
  int _selectedIndex=0;
   changeDestination(index){
     setState(() {
       _selectedIndex=index;
     });

   }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          
          NavigationRail(

            onDestinationSelected:changeDestination,
            destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.dashboard,),
              label: Text("DashBord"),
              selectedIcon: Icon(Icons.dashboard_customize,),
            ),
              NavigationRailDestination(
                icon: Icon(Icons.person_outline_rounded),
                label: Text("Doctor"),
                selectedIcon: Icon(Icons.person),
              ),

              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                label: Text("Clinis"),
                selectedIcon: Icon(Icons.home),
              ),

              NavigationRailDestination(
                icon: Icon(Icons.circle_outlined),
                label: Text("Patiens"),
                selectedIcon: Icon(Icons.check_circle),
              ),

          ],
            minWidth: width*0.05,
            labelType:NavigationRailLabelType.all,
            selectedLabelTextStyle: TextStyle(
              color: Colors.grey[200],
            ),
            unselectedLabelTextStyle: TextStyle(
              color: Colors.grey[600],
            ),
            selectedIconTheme: IconThemeData(color: Colors.grey[200],size: height*0.05),
            unselectedIconTheme:  IconThemeData(color: Colors.grey[600],size: height*0.05),
            elevation: 5,
            // useIndicator: true,
            backgroundColor: AppColors.color5,

            selectedIndex: _selectedIndex,),
          // const VerticalDivider(thickness: 1,width: 1,),
          MainContent[_selectedIndex],
        ],
      ),
    );
  }
}
