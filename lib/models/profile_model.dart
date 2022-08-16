class ProfilModel {
  ProfilModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String message;
  late final List<Data> data;

  ProfilModel.fromJson(Map<String, dynamic> json){
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
    required this.patiant,
  });
  late final int id;
  late final String Fname;
  late final String Lname;
  late final String email;
  late final Null emailVerifiedAt;
  late final String Birthday;
  late final String Image;
  late final String Gender;
    String? address;
  late final int RoleId;
  late final String createdAt;
  late final String updatedAt;
  late final Patiant patiant;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    Fname = json['Fname'];
    Lname = json['Lname'];
    email = json['email'];
    emailVerifiedAt = null;
    Birthday = json['Birthday'];
    Image = json['Image'];
    Gender = json['Gender'];
    address = json['Address'];
    RoleId = json['Role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    patiant = Patiant.fromJson(json['patiant']);
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
    _data['patiant'] = patiant.toJson();
    return _data;
  }
}

class Patiant {
  Patiant({
    required this.id,
    required this.Careear,
    required this.weigh,
    this.description,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String Careear;
  late final int weigh;
  late final Null description;
  late final int userId;
  late final String createdAt;
  late final String updatedAt;

  Patiant.fromJson(Map<String, dynamic> json){
    id = json['id'];
    Careear = json['Careear'];
    weigh = json['weigh'];
    description = null;
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['Careear'] = Careear;
    _data['weigh'] = weigh;
    _data['description'] = description;
    _data['user_id'] = userId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}