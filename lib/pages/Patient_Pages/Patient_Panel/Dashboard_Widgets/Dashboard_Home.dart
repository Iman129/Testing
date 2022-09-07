import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Panel/Dashboard_Widgets/Dashboard_List.dart';


import 'package:velocity_x/velocity_x.dart';


import 'Dashboard_Header.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SafeArea(
            bottom: false,
            child: Container(
              padding: Vx.mOnly(right: 20.0, left: 20.0, top: 0.0),
                child: Column(
                  crossAxisAlignment:
                   CrossAxisAlignment.start, // isey text syart s ae ga
                  children: [
                    DashboardHeader(),
                    DashboardList(),
                  ],
                ),
              ),
            ),
        );
  }
}