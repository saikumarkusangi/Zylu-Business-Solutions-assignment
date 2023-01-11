// To parse this JSON data, do
//
//     final characterModel = characterModelFromJson(jsonString);

import 'dart:convert';

List<CharacterModel?>? characterModelFromJson(String str) => json.decode(str) == null ? [] : List<CharacterModel?>.from(json.decode(str)!.map((x) => CharacterModel.fromJson(x)));

String characterModelToJson(List<CharacterModel?>? data) => json.encode(data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())));

class CharacterModel {
    CharacterModel({
        this.id,
        this.imageUrl,
        this.firstName,
        this.lastName,
        this.email,
        this.contactNumber,
        this.age,
        this.dob,
        this.salary,
        this.address,
        this.role,
        this.active,
    });

    int? id;
    String? imageUrl;
    String? firstName;
    String? lastName;
    String? email;
    String? contactNumber;
    int? age;
    String? dob;
    int? salary;
    String? address;
    String? role;
    bool? active;

    factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        id: json["id"],
        imageUrl: json["imageUrl"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        contactNumber: json["contactNumber"],
        age: json["age"],
        dob: json["dob"],
        salary: json["salary"],
        address: json["address"],
        role: json["role"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "imageUrl": imageUrl,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "contactNumber": contactNumber,
        "age": age,
        "dob": dob,
        "salary": salary,
        "address": address,
        "role": role,
        "active": active,
    };
}
