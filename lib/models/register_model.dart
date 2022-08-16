class RegisterModel {
  RegisterModel({
    required this.statusCode,
    required this.message,
     this.data,
  });
  late final int statusCode;
  late final String message;
  late final Data ?data;

  RegisterModel.fromJson(Map<String, dynamic> json){
    statusCode = json['status_code'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status_code'] = statusCode;
    _data['message'] = message;
    _data['data'] = data!.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.person,
    required this.token,
  });
  late final Person person;
  late final String token;

  Data.fromJson(Map<String, dynamic> json){
    person = Person.fromJson(json['person']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['person'] = person.toJson();
    _data['token'] = token;
    return _data;
  }
}

class Person {
  Person({
    required this.RoleId,
    required this.Fname,
    required this.Lname,
    required this.email,
    required this.Birthday,
    required this.Image,
    required this.Gender,
    required this.Address,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });
  late final int RoleId;
  late final String Fname;
  late final String Lname;
  late final String email;
  late final String Birthday;
  late final String Image;
  late final String Gender;
  late final String Address;
  late final String updatedAt;
  late final String createdAt;
  late final int id;

  Person.fromJson(Map<String, dynamic> json){
    RoleId = json['Role_id'];
    Fname = json['Fname'];
    Lname = json['Lname'];
    email = json['email'];
    Birthday = json['Birthday'];
    Image = json['Image'];
    Gender = json['Gender'];
    Address = json['Address'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Role_id'] = RoleId;
    _data['Fname'] = Fname;
    _data['Lname'] = Lname;
    _data['email'] = email;
    _data['Birthday'] = Birthday;
    _data['Image'] = Image;
    _data['Gender'] = Gender;
    _data['Address'] = Address;
    _data['updated_at'] = updatedAt;
    _data['created_at'] = createdAt;
    _data['id'] = id;
    return _data;
  }
}

class RegisterInfoModel {
  RegisterInfoModel({
    required this.Fname,
    required this.Lname,
    required this.email,
    required this.password,
    required this.Birthday,
    required this.Image,
    required this.Gender,
    required this.Address,
    required this.Careear,
    required this.weigh,
    required this.description,
  });
  late final String Fname;
  late final String Lname;
  late final String email;
  late final String password;
  late final String Birthday;
  late final String Image;
  late final String Gender;
  late final String Address;
  late final String Careear;
  late final String weigh;
  late final String description;

  RegisterInfoModel.fromJson(Map<String, dynamic> json){
    Fname = json['Fname'];
    Lname = json['Lname'];
    email = json['email'];
    password = json['password'];
    Birthday = json['Birthday'];
    Image = json['Image'];
    Gender = json['Gender'];
    Address = json['Address'];
    Careear = json['Careear'];
    weigh = json['weigh'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Fname'] = Fname;
    _data['Lname'] = Lname;
    _data['email'] = email;
    _data['password'] = password;
    _data['Birthday'] = Birthday;
    _data['Image'] = Image;
    _data['Gender'] = Gender;
    _data['Address'] = Address;
    _data['Careear'] = Careear;
    _data['weigh'] = weigh;
    _data['description'] = description;
    return _data;
  }
}