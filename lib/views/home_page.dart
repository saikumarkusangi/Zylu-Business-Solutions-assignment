// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:employees/controller/employee_controller.dart';
import 'package:employees/services/network_manager.dart';
import 'package:employees/views/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
const HomePage({Key? key}) : super(key: key);

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
  final controller = Provider.of<EmployeeController>(context);
return Scaffold(
  backgroundColor: Colors.white,
body: (controller.isLoading? 
const Center(
child: CircularProgressIndicator(),
 ):
  SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const  Padding(
         padding:  EdgeInsets.all(10.0),
         child:  SizedBox(
            height: 50,
           child: Text('Employee Sheet',
                   style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                   ),),
         ),
       ),
        Expanded(
          child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.employees.length,
          itemBuilder: ((context, index) {
           final employee = controller.employees[index];
           return GestureDetector(
            onTap: (() {
              Navigator.push(context,
               MaterialPageRoute(builder: (_)=>  DetailsPage(employeeModel: employee,)));
            }
           ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
              elevation: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Hero(
                    tag: employee.firstName!,
                     child:ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(employee.imageUrl!,fit: BoxFit.cover,),
                     ) 
                     ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                     Text("${employee.firstName!} ${employee.lastName}",
                      style:const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22
                        ),
                        overflow: TextOverflow.ellipsis,
                        ),
                          Container(
                            width: MediaQuery.of(context).size.width/1.8,
                            child: Text(employee.role!,
                                        style:const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          ),
                          ),
                           Text("Id:${employee.id!.toString()}",
                      style:const TextStyle(
                        fontSize: 20,
                        color: Colors.black54
                        ),
                        overflow: TextOverflow.ellipsis,
                        ),
                  
                  ],
                ),
                (employee.active!)?
                Icon(Icons.bookmark,
                color: Colors.green.shade300,
                size: 32,):const SizedBox()
              ]),
             ),
           )
           
           ,);
          }),
          
          ),
        ),
      ],
    ),
  )
),
);
}
}
