
import 'dart:convert';

List<Map<String, EmployeeModel?>?>? employeeModelFromJson(String str) => json.decode(str) == null ? [] : List<Map<String, EmployeeModel?>?>.from(json.decode(str)!.map((x) => Map.from(x!).map((k, v) => MapEntry<String, EmployeeModel?>(k, EmployeeModel.fromJson(v)))));

String employeeModelToJson(List<Map<String, EmployeeModel?>?>? data) => json.encode(data == null ? [] : List<dynamic>.from(data!.map((x) => Map.from(x!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())))));

class EmployeeModel {
    EmployeeModel({
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

    factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
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
