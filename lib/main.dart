import 'package:employees/controller/characterController.dart';
import 'package:employees/controller/employee_controller.dart';
import 'package:employees/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
       ChangeNotifierProvider(create:(_)=>EmployeeController()),
          ChangeNotifierProvider(create:(_)=>CharacterController())
      ],
      child: MaterialApp(
        title: 'Employees Data',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
