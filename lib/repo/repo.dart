import 'dart:developer';
import 'package:clinic_system/models/doctor_info_add_model.dart';
import '../models/allClinic_model.dart';
import '../models/all_doctor_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/profile_model.dart';
import '../models/register_model.dart';
import '../new/api.dart';

class Repo {
  String? message;

  /////////////////////////////////////login///////////////////////////

  Future login(String email, String password) async {
    log('hy');
    http.Response res = await http.post(
      Apis.loginUri,
      body: {
        "email": email,
        "password": password.toString(),
      },
    );
    var myJson = json.decode(res.body);
    if (res.statusCode == 200) {
      message = myJson["message"];
      log(myJson);
      return true;
    } else {
      log(myJson);

      message = myJson["message"];
      return false;
    }
  }

  /////////////////////////////////////Register///////////////////////////

  Future<RegisterModel> register(RegisterInfoModel registerInfoModel) async {
    var request = http.MultipartRequest('POST', Apis.registerUri);
    request.headers.addAll({'Accept': "application/json"});

    if (registerInfoModel.Image.isNotEmpty)
      request.files.add(
        await http.MultipartFile.fromPath('Image', registerInfoModel.Image),
      );

    request.fields['email'] = registerInfoModel.email;
    request.fields['password'] = registerInfoModel.password;
    request.fields['Fname'] = registerInfoModel.Fname;
    request.fields['Lname'] = registerInfoModel.Lname;
    request.fields['Gender'] = registerInfoModel.Gender;
    request.fields['Birthday'] = registerInfoModel.Birthday;
    request.fields['Address'] = registerInfoModel.Address;
    request.fields['Careear'] = registerInfoModel.Careear;
    request.fields['description'] = registerInfoModel.description;
    request.fields['weigh'] = registerInfoModel.weigh.toString();

    http.Response response =
        await http.Response.fromStream(await request.send());
    log(response.body.toString());
    var myJson = json.decode(response.body);
    RegisterModel registerModel = RegisterModel.fromJson(myJson);
    log("Result: ${response.body}");
    if (myJson["data"] != null) {
      log("Result: ${response.body}");

      return registerModel;
    }
    log(myJson.toString());
    return RegisterModel(
        statusCode: response.statusCode, message: myJson["message"]);
  }

  /////////////////////////////////////getProfile///////////////////////////

  Future<ProfilModel> getProfile(String token) async {
    http.Response res = await http.get(Apis.profileUri, headers: {
      "Accept": "application/json",
      'Authorization': "Bearer $token"
    });
    log('profile${res.statusCode.toString()}');

    if (res.statusCode == 200) {
      var myJson = json.decode(res.body);
      ProfilModel profileModel = ProfilModel.fromJson(myJson);
      return profileModel;
    } else {
      print('false');

      return ProfilModel(
          statusCode: 404, message: "enter true token token", data: []);
    }
  }

  /////////////////////////////////////getAllClinic///////////////////////////

  Future<AllClinicModel> getAllClinic() async {
    http.Response res = await http.get(
      Apis.getAllClinicUri,
    );
    print(res.statusCode);
    if (res.statusCode == 200) {
      var myJson = json.decode(res.body);
      AllClinicModel allClinicModel = AllClinicModel.fromJson(myJson);
      return allClinicModel;
    } else {
      return AllClinicModel(statusCode: 404, message: "False", data: []);
    }
  }

  /////////////////////////////////////getclinicDoctors///////////////////////////

  // Future<ClinicInfoModel> getClinicDoctors(String id) async {
  //   http.Response res = await http.post(
  //       Apis.getclinicDoctors,
  //       body: {
  //         "id":id
  //       }
  //
  //   );
  //   print(res.statusCode);
  //
  //   if (res.statusCode == 200) {
  //     var myJson = json.decode(res.body);
  //     ClinicInfoModel clinicInfoModel=ClinicInfoModel.fromJson(myJson);
  //     return clinicInfoModel;
  //
  //     log(myJson.toString());
  //   } else {
  //     Data1 data1= Data1(id: 0, name: '', specialize: '', createdAt: '', updatedAt: '', doctors: []) ;
  //     return ClinicInfoModel( message: "False", status: false,data: data1);
  //   }
  // }

  ////////////////////////////////////getAllDoctors///////////////////////////

  Future<AllDoctorsModel> getAllDoctors() async {
    http.Response res = await http.get(
      Apis.getAllDoctorsUri,
    );
    print(res.statusCode);

    if (res.statusCode == 200) {
      var myJson = json.decode(res.body);
      AllDoctorsModel allDoctorsModel = AllDoctorsModel.fromJson(myJson);
      return allDoctorsModel;
    } else {
      return AllDoctorsModel(statusCode: 404, message: "error", data: []);
    }
  }

  /////////////////////////////////////addDoctor///////////////////////////

  Future<bool> addDoctor(DoctorInfoAddModel doctorInfoAddModel) async {
    http.Response response = await http.post(
      Apis.addDoctor,
      headers: {
        "Accept": "application/json"
      },
      body: {
        "Fname": doctorInfoAddModel.Fname,
        "Lname": doctorInfoAddModel.Lname,
        "email": doctorInfoAddModel.email,
        "Birthday": doctorInfoAddModel.Birthday,
        "Gender": doctorInfoAddModel.Gender,
        "Address": doctorInfoAddModel.Address,
        "password": doctorInfoAddModel.password,
        "startDate": doctorInfoAddModel.Birthday,
        "description": doctorInfoAddModel.description,
        "EndDate":doctorInfoAddModel.Birthday,
        "specialize": doctorInfoAddModel.specialize,
        "Clinic_id": doctorInfoAddModel.ClinicId,
        "evalution":  doctorInfoAddModel.evalution,
        "jobTitle":doctorInfoAddModel.jobTitle,
        "status": doctorInfoAddModel.status,
        "work_day": doctorInfoAddModel.workDay,
        "experiance":  doctorInfoAddModel.experiance,
        "previewDuration":doctorInfoAddModel.previewDuration,
      },
    );


    //
    //
    // http.Response response = await http.Response.fromStream(await request.send());
    // var myJson = json.decode(response.body);
    log("Result: ${response.body}");
    log("Result: ${response.statusCode}");
    if (response.statusCode==200) {
      log("Result: ${response.body}");
      log("true");
      return true;
    }
    // log(myJson.toString());
    log("false");

    return false;
  }

  /////////////////////////////////////addClinic///////////////////////////

  Future<bool> addClinic(String name, String specialize) async {
    http.Response response = await http.post(
      Apis.addClinic,
      body: {
        "specialize": specialize,
        "name": name,
      },
    );

    log(response.body.toString());
    var myJson = json.decode(response.body);
    log("Result: ${response.body}");
    log("Result: ${response.statusCode}");
    if (myJson["data"] != null) {
      log("Result: ${response.body}");
      log("true");
      return true;
    }
    log(myJson.toString());
    log("false");

    return false;
  }

  /////////////////////////////////////addClinic///////////////////////////

  Future deleteClinic(String id) async {
    http.Response response = await http.delete(
      Apis.deleteClinic,
      body: {
        "id": id
      },
    );


    log("Result: ${response.body}");

    if (response.statusCode==200) {
      log("Result: ${response.body}");
      log("true");
    }
    else{
      log("Result: ${response.body}");
      log("false");
    }
  }
}
