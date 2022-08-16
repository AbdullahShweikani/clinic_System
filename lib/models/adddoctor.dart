class Adddoctor {
  Adddoctor({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String message;
  late final Data data;

  Adddoctor.fromJson(Map<String, dynamic> json){
    statusCode = json['status_code'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status_code'] = statusCode;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
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

  Data.fromJson(Map<String, dynamic> json){
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