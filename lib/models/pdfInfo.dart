// To parse this JSON data, do
//
//     final pdfInfoModel = pdfInfoModelFromMap(jsonString);

import 'dart:convert';

class PdfInfoModel {
  PdfInfoModel({
    this.id,
    this.path,
    this.name,
    this.createdTime,
  });

  int? id;
  String? path;
  String? name;
  String? createdTime;

  PdfInfoModel copy({
    int? id,
    String? path,
    String? name,
    String? createdTime,
  }) =>
      PdfInfoModel(
        id: id ?? this.id,
        path: path ?? this.path,
        name: name ?? this.name,
        createdTime: createdTime ?? this.createdTime,
      );

  factory PdfInfoModel.fromJson(String str) =>
      PdfInfoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PdfInfoModel.fromMap(Map<String, dynamic> json) => PdfInfoModel(
        id: json["id"],
        path: json["path"],
        name: json["name"],
        createdTime: json["time"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "path": path,
        "name": name,
        "time": createdTime,
      };
}
