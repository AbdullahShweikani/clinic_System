class Apis {
  static String baseUri = "http://192.168.43.91:8000/";

  static Uri loginUri = Uri.parse(baseUri + "api/login");
  static Uri profileUri = Uri.parse(baseUri + "api/index");
  static Uri registerUri = Uri.parse(baseUri+"api/createAccount");
  static Uri getAllClinicUri = Uri.parse(baseUri+"api/clinics/Get_Clinic");
  static Uri getAllDoctorsUri = Uri.parse(baseUri+"api/getDoctors");
  static Uri addDoctor = Uri.parse(baseUri+"api/add_Doctor");
  static Uri addClinic = Uri.parse(baseUri+"api/clinics/addClinic");
  static Uri deleteClinic = Uri.parse(baseUri+"api/clinics/delete");
}