class Getalldoctor {
  Getalldoctor({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String message;
  late final List<Data> data;

  Getalldoctor.fromJson(Map<String, dynamic> json){
    statusCode = json['status_code'];
    message = json['message'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status_code'] = statusCode;
    _data['message'] = message;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.Fname,
    required this.Lname,
    required this.email,
    this.emailVerifiedAt,
    required this.Birthday,
    required this.Image,
    required this.Gender,
    required this.address,
    required this.RoleId,
    required this.createdAt,
    required this.updatedAt,
    required this.employee,
  });
  late final int id;
  late final String Fname;
  late final String Lname;
  late final String email;
  late final Null emailVerifiedAt;
  late final String Birthday;
  late final String Image;
  late final String Gender;
  late final String address;
  late final int RoleId;
  late final String createdAt;
  late final String updatedAt;
  late final Employee employee;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    Fname = json['Fname'];
    Lname = json['Lname'];
    email = json['email'];
    emailVerifiedAt = null;
    Birthday = json['Birthday'];
    Image = json['Image'];
    Gender = json['Gender'];
    address = json['address'];
    RoleId = json['Role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    employee = Employee.fromJson(json['employee']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['Fname'] = Fname;
    _data['Lname'] = Lname;
    _data['email'] = email;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['Birthday'] = Birthday;
    _data['Image'] = Image;
    _data['Gender'] = Gender;
    _data['address'] = address;
    _data['Role_id'] = RoleId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['employee'] = employee.toJson();
    return _data;
  }
}

class Employee {
  Employee({
    required this.id,
    required this.userId,
    required this.status,
    required this.jobTitle,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.updatedAt,
    required this.doctor,
  });
  late final int id;
  late final int userId;
  late final int status;
  late final String jobTitle;
  late final String startDate;
  late final String endDate;
  late final String createdAt;
  late final String updatedAt;
  late final List<Doctor> doctor;

  Employee.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    status = json['status'];
    jobTitle = json['jobTitle'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    doctor = List.from(json['doctor']).map((e)=>Doctor.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['status'] = status;
    _data['jobTitle'] = jobTitle;
    _data['startDate'] = startDate;
    _data['endDate'] = endDate;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['doctor'] = doctor.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Doctor {
  Doctor({
    required this.id,
    required this.description,
    required this.workDay,
    required this.experiance,
    required this.specialize,
    required this.previewDuration,
    required this.evalution,
    required this.employeeId,
    required this.ClinicId,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String description;
  late final String workDay;
  late final String experiance;
  late final String specialize;
  late final int previewDuration;
  late final int evalution;
  late final int employeeId;
  late final int ClinicId;
  late final String createdAt;
  late final String updatedAt;

  Doctor.fromJson(Map<String, dynamic> json){
    id = json['id'];
    description = json['description'];
    workDay = json['work_day'];
    experiance = json['experiance'];
    specialize = json['specialize'];
    previewDuration = json['previewDuration'];
    evalution = json['evalution'];
    employeeId = json['employee_id'];
    ClinicId = json['Clinic_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['description'] = description;
    _data['work_day'] = workDay;
    _data['experiance'] = experiance;
    _data['specialize'] = specialize;
    _data['previewDuration'] = previewDuration;
    _data['evalution'] = evalution;
    _data['employee_id'] = employeeId;
    _data['Clinic_id'] = ClinicId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}