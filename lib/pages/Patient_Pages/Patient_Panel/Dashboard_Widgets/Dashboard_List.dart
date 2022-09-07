import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Panel/pages/AllDoctors.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Panel/pages/Patientprofile.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Panel/pages/SensorsData.dart';

import 'package:velocity_x/velocity_x.dart';

class DashboardList extends StatefulWidget {
  const DashboardList({Key? key}) : super(key: key);

  @override
  State<DashboardList> createState() => _DashboardListState();
}

class _DashboardListState extends State<DashboardList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 200,
              width: 175,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PatientProfile(),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  color: Colors.indigo,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/profile.png",
                                ),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.center), 
                         ), 
                        ),
                        " Profile".text.xl.bold.color(Colors.white).make().p8(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 200,
              width: 175,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AllDoctorsPage(),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  color: Colors.indigo,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/DoctorImage-01.png",
                                ),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.center),
                          ),  
                        ),
                        " All Doctors"
                            .text
                            .xl
                            .bold
                            .color(Colors.white)
                            .make()
                            .p8(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 200,
              width: 175,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SensorsDataPage(),
                  ));
                },
                child: Card(
                  elevation: 5,
                  color: Colors.indigo,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/adminImage-01.png",
                                ),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.center),
                          ),  
                        ),
                        " Check your Vitals"
                            .text
                            .xl
                            .bold
                            .color(Colors.white)
                            .make()
                            .p8(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 200,
              width: 175,
              child: InkWell(
                onTap: () async {
                   /*  DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
                   await ref.set({
                          "name": "John",
                          "age": 18,
                          "address": {
                          "line1": "100 Mountain View"
                          } 
                  }); */
                },
                child: Card(
                  elevation: 5,
                  color: Colors.indigo,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                     
                              
                          ),
                       // ),
                        "Request Doctor"
                            .text
                            .xl
                            .bold
                            .color(Colors.white)
                            .make()
                            .p8(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
