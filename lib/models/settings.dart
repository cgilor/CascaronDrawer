// To parse this JSON data, do
//
//     final settingsModel = settingsModelFromMap(jsonString);

import 'dart:convert';

class SettingsModel {
  SettingsModel({
    this.id,
    this.name,
    this.address,
    this.phone,
    this.email,
    this.image,
  });

  int? id;
  String? name;
  String? address;
  String? phone;
  String? email;
  String? image;

  SettingsModel copy({
    int? id,
    String? name,
    String? address,
    String? phone,
    String? email,
    String? image,
  }) =>
      SettingsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        image: image ?? this.image,
      );

  factory SettingsModel.fromJson(String str) =>
      SettingsModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SettingsModel.fromMap(Map<String, dynamic> json) => SettingsModel(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "image": image,
      };
}
