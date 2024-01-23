import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  DateTime? userId;
  String? id;
  String? title;
  String? body;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: DateTime.parse(json["userId"]),
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
      };
}

class Qualification {
  Qualification({
    this.degree,
    this.completionData,
  });

  String? degree;
  String? completionData;

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        degree: json["degree"],
        completionData: json["completionData"],
      );

  Map<String, dynamic> toJson() => {
        "degree": degree,
        "completionData": completionData,
      };
}
