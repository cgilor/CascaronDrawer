// To parse this JSON data, do
//
//     final costumerModel = costumerModelFromMap(jsonString);

import 'dart:convert';

class CostumerModel {
  CostumerModel({
    this.id,
    this.name,
    this.address,
    this.phone,
    this.email,
  });

  int? id;
  String? name;
  String? address;
  String? phone;
  String? email;

  CostumerModel copy({
    int? id,
    String? name,
    String? address,
    String? phone,
    String? email,
  }) =>
      CostumerModel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        email: email ?? this.email,
      );

  factory CostumerModel.fromJson(String str) =>
      CostumerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CostumerModel.fromMap(Map<String, dynamic> json) => CostumerModel(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
      };
}
