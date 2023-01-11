// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:employees/models/user_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
DetailsPage({Key? key,required this.employeeModel}) : super(key: key);
EmployeeModel employeeModel;

@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white,
appBar: AppBar(
  elevation: 0,
  iconTheme:const IconThemeData(color: Colors.black),
automaticallyImplyLeading: true,
backgroundColor: Colors.white,
),
body: SingleChildScrollView(
child: Container(
padding: const EdgeInsets.all(10.0),
child: Column(
children: [
  Stack(
    children: 
      [
       
        Container(
        height: MediaQuery.of(context).size.height/2.1,
  
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(employeeModel.imageUrl!,fit: BoxFit.cover,),
  
        ),
      ),
        (employeeModel.active!)?
                Positioned(
                  top: 10,
                  child: Icon(Icons.bookmark,
                  color: Colors.green.shade300,
                  size: 42,),
                ):const SizedBox(),
    ],
  ),
  SizedBox(
    
    height: MediaQuery.of(context).size.height/2.5,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text("First Name: ${employeeModel.firstName}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text("Last Name: ${employeeModel.lastName}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text("Role: ${employeeModel.role}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text("Date of Birth: ${employeeModel.dob}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text("Email : ${employeeModel.email}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text("Contact: ${employeeModel.contactNumber}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text("First Name: ${employeeModel.address}",
          style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          (employeeModel.active! == true) ? 
         const Text("Active(more than 5 yrs): Yes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),):
         const Text("Active(more than 5 yrs): No",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
          
        ],
      ),
    ),
  )
],
),
),
),
);
}
}
