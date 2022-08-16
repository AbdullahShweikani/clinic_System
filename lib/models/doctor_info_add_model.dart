class DoctorInfoAddModel {
  DoctorInfoAddModel({
    required this.Fname,
    required this.Lname,
    required this.email,
    required this.password,
    required this.Birthday,
    required this.Gender,
    required this.Address,
    required this.startDate,
    required this.EndDate,
    required this.status,
    required this.previewDuration,
    required this.evalution,
    required this.specialize,
    required this.description,
    required this.experiance,
    required this.ClinicId,
    required this.jobTitle,
    required this.workDay,
    required this.Image,
  });
  late final String Fname;
  late final String Lname;
  late final String email;
  late final String password;
  late final String Birthday;
  late final String Gender;
  late final String Address;
  late final String startDate;
  late final String EndDate;
  late final String status;
  late final String previewDuration;
  late final String evalution;
  late final String specialize;
  late final String description;
  late final String experiance;
  late final String ClinicId;
  late final String jobTitle;
  late final String workDay;
  late final String Image;

  DoctorInfoAddModel.fromJson(Map<String, dynamic> json){
    Fname = json['Fname'];
    Lname = json['Lname'];
    email = json['email'];
    password = json['password'];
    Birthday = json['Birthday'];
    Gender = json['Gender'];
    Address = json['Address'];
    startDate = json['startDate'];
    EndDate = json['EndDate'];
    status = json['status'];
    previewDuration = json['previewDuration'];
    evalution = json['evalution'];
    specialize = json['specialize'];
    description = json['description'];
    experiance = json['experiance'];
    ClinicId = json['Clinic_id'];
    jobTitle = json['jobTitle'];
    workDay = json['work_day'];
    Image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Fname'] = Fname;
    _data['Lname'] = Lname;
    _data['email'] = email;
    _data['password'] = password;
    _data['Birthday'] = Birthday;
    _data['Gender'] = Gender;
    _data['Address'] = Address;
    _data['startDate'] = startDate;
    _data['EndDate'] = EndDate;
    _data['status'] = status;
    _data['previewDuration'] = previewDuration;
    _data['evalution'] = evalution;
    _data['specialize'] = specialize;
    _data['description'] = description;
    _data['experiance'] = experiance;
    _data['Clinic_id'] = ClinicId;
    _data['jobTitle'] = jobTitle;
    _data['work_day'] = workDay;
    _data['Image'] = Image;
    return _data;
  }
}