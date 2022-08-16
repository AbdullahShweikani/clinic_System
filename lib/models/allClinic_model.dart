class AllClinicModel {
  AllClinicModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String message;
  late final List<Data> data;

  AllClinicModel.fromJson(Map<String, dynamic> json){
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
    required this.name,
    required this.specialize,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String specialize;
  late final String createdAt;
  late final String updatedAt;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    specialize = json['specialize'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['specialize'] = specialize;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}