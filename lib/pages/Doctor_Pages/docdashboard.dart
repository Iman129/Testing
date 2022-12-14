
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:mychatapp/pages/theme/themes.dart';

import '../theme/themes.dart';
import '../widgets/drawer.dart';

class DocDashboard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyTheme.darkbluishColor),),
      ),
      body:
      
      SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
              
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Image.asset("assets/images/doctordasg.webp",
                                  height: 150,
                                  width: 300,
                                  fit: BoxFit.cover,),
                       // ),
                     
                      ],
                        
                     
                       
                    ),
                   /*  SizedBox(
                      width: 30,
                      height: 30,
                    ), */
                    Divider(
                      height: 30,
                      color: Color.fromARGB(255, 120, 119, 119),
                    ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                          Container(
                        child: Card(
                          color:  Colors.indigo.withOpacity(0.6),
                          
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                            
                        child: Row(
                           children: [
                             Container(
                             
                                child: Column(
                                  children: [
                                     Image.asset("assets/images/tpatients.png",
                                              height: 100,
                                              width: 150,
                                              fit: BoxFit.cover,),
                                              SizedBox(height:10 ,width: 10,),
                                              Text("Total Patients",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                              Text("50",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                  ],
      
                                ),),
                                ],
                                ) ),
                        ),
                           Container(
                        child: Card(
                          
                           color:  Colors.indigo.withOpacity(0.6),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        child: Row(
                           children: [
                             Container(
                             
                                child: Column(
                                  children: [
                                     Image.asset("assets/images/treatp.png",
                                              height: 100,
                                              width: 150,
                                              fit: BoxFit.cover,),
                                              SizedBox(height:10 ,width: 10,),
                                              Text("Treated Patients",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                              Text("2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                  ],
      
                                ),),
                                ],
                                ) ),
                        ),
                             ],
                           ),
                           SizedBox(
                            height: 10,
                            width: 10,
                           ),
                        Container(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text("Patient's Graph",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
      
                          ]),
                        )
                          
      
            ],),
          ),
        ),
      ),
      
      drawer: MyDrawer() 
    );
  }
}
