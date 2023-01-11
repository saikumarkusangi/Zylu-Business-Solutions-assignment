import 'dart:convert';
import 'package:employees/constants/constants.dart';
import "package:dio/dio.dart";
import 'package:employees/models/characterModel.dart';
import 'package:employees/models/user_model.dart';


class NetworkManager {

static var dio = Dio();

static Future<List<EmployeeModel>> fetchEmployee() async{
  
  var response = await dio.get(uri);
  
  if (response.statusCode == 200) 
  {
    final List<dynamic> data =  response.data;
    return data.map((item) => EmployeeModel.fromJson(item)).toList();
    
  }else{
    throw Exception('Something went wrong!!!');
  }
 
}



}
