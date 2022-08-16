import 'package:clinic_system/screens/Add_Session/add_Session.dart';
import 'package:clinic_system/screens/DoctorsReport/DoctorsReport.dart';
import 'package:clinic_system/screens/Prescription/Prescription.dart';
import 'package:clinic_system/screens/allcategories/allcategories.dart';
import 'package:clinic_system/screens/auth/widget/login.dart';
import 'package:clinic_system/screens/auth/widget/register.dart';
import 'package:clinic_system/screens/categor_doctor/catwgordoctor.dart';
import 'package:clinic_system/screens/consts/them_manager.dart';
import 'package:clinic_system/screens/consulation_patiens/consulation_patiens.dart';
import 'package:clinic_system/screens/dashbord/add_doctor.dart';
import 'package:clinic_system/screens/dashbord/add_patiens.dart';
import 'package:clinic_system/screens/dashbord/log_in_dash_bord.dart';
import 'package:clinic_system/screens/dashbord/main_dash_bord.dart';
import 'package:clinic_system/screens/dashbord/profile_doctor.dart';
import 'package:clinic_system/screens/dashbord/profile_patiens.dart';
import 'package:clinic_system/screens/dashbord/widget/add_clinic.dart';
import 'package:clinic_system/screens/date_Patiens/date_Patiens.dart';
import 'package:clinic_system/screens/doctor/doctor_list.dart';
import 'package:clinic_system/screens/doctor/widget/doctor_details.dart';
import 'package:clinic_system/screens/home.dart';
import 'package:clinic_system/screens/home_screen/home_screen.dart';
import 'package:clinic_system/screens/notification/widget/notification.dart';
import 'package:clinic_system/screens/profile/EditProfile.dart';
import 'package:clinic_system/screens/profile/profile.dart';
import 'package:clinic_system/screens/welcom/widget/Language.dart';
import 'package:clinic_system/screens/widget/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'screens/welcom/widget/welcom.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // runApp(EasyLocalization(
  //     supportedLocales: const [
  //       Locale('ar', 'AR'),
  //       Locale('dr', 'DR'),
  //     ],
  //     path: 'assets/translation',
  //     // saveLocale: true,
  //     fallbackLocale: const Locale('dr', 'DR'),
  //     startLocale: const Locale('ar', 'AR'),
  //     child: const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      initialRoute:MainDashBord.mainDashBord,
      routes: {
        LanguageSetting.languageSetting: (context) => const LanguageSetting(),
        WelcomeScreen.welcomeScreen: (context) => const WelcomeScreen(),
        Home.home: (context) => const Home(),
        HomeScreen.homeScreen: (context) => const HomeScreen(),
        Login.login: (context) => const Login(),
        Register.register: (context) => const Register(),
        DoctorList.doctorList: (context) => const DoctorList(),
        Allcate.allca: (context) => const Allcate(),
        CategoriesDoctor.categoriesDoctor: (context) =>
            const CategoriesDoctor(),
        LogInDashBord.logIndashBord: (context) => const LogInDashBord(),
        NotificationScreens.notificationScreens: (context) =>
            const NotificationScreens(),
        Profile.proFile: (context) => Profile(),
        AddClinic.addClinic:(context)=>AddClinic(),
        EditProfile.editProfile: (context) => const EditProfile(),
        ValidatorTextField.validatorTextField: (context) =>
            ValidatorTextField(),
        MainDashBord.mainDashBord: (context) => const MainDashBord(),
        DoctorsReport.doctorsReport: (context) => const DoctorsReport(),
        Prescription.prescription: (context) => const Prescription(),
        AddSession.addSession: (context) => const AddSession(),
        AddDoctor.addDoctor: (context) => const AddDoctor(),
        AddPatien.addPatien: (context) => const AddPatien(),
        DatePatiens.datePatiens: (context) => const DatePatiens(),
        ProfileDoctor.profileDoctor: (context) => const ProfileDoctor(),
        ConsolationPatiens.consolationPatiens: (context) =>
            const ConsolationPatiens(),
        ProfilePatiens.profilePatiens: (context) => const ProfilePatiens(),
        DoctorDetails.doctorDetails: (context) => const DoctorDetails(
              imageDoctor: 'images/mohamad.jpg',
              nameDoctor: 'ahmad',
            ),
      },
      builder: EasyLoading.init(),
    );
  }
}

// Orientation orientation = MediaQuery.of(context).orientation;
// double height = MediaQuery.of(context).size.height;
// double width = MediaQuery.of(context).size.width;

// Switch(),
// Checkbox(value: value, onChanged: onChanged)
