// To parse this JSON data, do
//
//     final imagePdfModel = imagePdfModelFromMap(jsonString);

import 'dart:convert';

class ImagePdfModel {
  ImagePdfModel({
    this.id,
    this.path,
    this.description,
  });

  int? id;
  String? path;
  String? description;

  ImagePdfModel copy({
    int? id,
    String? path,
    String? description,
  }) =>
      ImagePdfModel(
        id: id ?? this.id,
        path: path ?? this.path,
        description: description ?? this.description,
      );

  factory ImagePdfModel.fromJson(String str) =>
      ImagePdfModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImagePdfModel.fromMap(Map<String, dynamic> json) => ImagePdfModel(
        id: json["id"],
        path: json["path"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "path": path,
        "description": description,
      };
}
