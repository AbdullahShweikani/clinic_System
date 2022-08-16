class ClinicInfoModel {
  ClinicInfoModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final bool status;
  late final String message;
  late final Data1 data;

  ClinicInfoModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = Data1.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data1 {
  Data1({
    required this.id,
    required this.name,
    required this.specialize,
    required this.createdAt,
    required this.updatedAt,
    required this.doctors,
  });
  late final int id;
  late final String name;
  late final String specialize;
  late final String createdAt;
  late final String updatedAt;
  late final List<dynamic> doctors;

  Data1.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    specialize = json['specialize'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    doctors = List.castFrom<dynamic, dynamic>(json['doctors']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['specialize'] = specialize;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['doctors'] = doctors;
    return _data;
  }
}