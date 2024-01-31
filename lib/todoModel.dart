import 'package:meta/meta.dart';
import 'dart:convert';

class TodoModel {
    String id;
    String title;

    TodoModel({
        required this.id,
        required this.title,
    });

    factory TodoModel.fromRawJson(String str) => TodoModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}
