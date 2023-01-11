import 'package:employees/models/user_model.dart';
import 'package:flutter/material.dart';

import '../services/network_manager.dart';

class EmployeeController extends ChangeNotifier{
  
  bool isLoading = false;
  List<EmployeeModel> employees  =[];

  EmployeeController(){
    fetchEmployees();
  }

Future<void> fetchEmployees() async {
  isLoading = true;
  notifyListeners();
  employees = await NetworkManager.fetchEmployee();
  isLoading = false;
  notifyListeners();
}

}