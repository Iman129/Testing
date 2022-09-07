import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/theme/themes.dart';
import 'package:mychatapp/pages/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart%20';

class docProfile extends StatefulWidget {
  @override
  State<docProfile> createState() => _docProfileState();
}

class _docProfileState extends State<docProfile> {
  String pUID = '';
  String name = '';
  String address = '';
  String email = '';
  String password = '';
  String gender = '';
  String age = '';
  String phonenumber = '';
  String cnic = '';
  String day = '';
  String timing = '';
  String institution = '';
  String specialization = '';
  String education = '';
  String experience = '';
  void getData() async {
    User? user = await FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance
        .collection("Doctors")
        .doc(user?.uid)
        .get();
    setState(() {
      if (vari.data() != null) {
        pUID = vari.data()!['D_Id'].toString();
        name = vari.data()!['D_Name'].toString();
        address = vari.data()!['D_Address'].toString();
        email = vari.data()!['D_Email'].toString();
        password = vari.data()!['D_Password'].toString();
        age = vari.data()!['D_Age'].toString();
        phonenumber = vari.data()!['D_PhoneNumber'].toString();
        gender = vari.data()!['D_Gender'].toString();
        cnic = vari.data()!['D_Cnic'].toString();
        day = vari.data()!['D_Days'].toString();
        timing = vari.data()!['D_Timings'].toString();
        institution = vari.data()!['D_Institution'].toString();
        specialization = vari.data()!['D_Specialization'].toString();
        education = vari.data()!['D_Education'].toString();
        experience = vari.data()!['D_Experience'].toString();
      }
    });
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.darkbluishColor),
        ),
      ),
      body: // SingleChildScrollView(
          Column(
        //Positioned(top: 0.0),
        children: [
          Container(
            width: size.width / 1, //width of container jitna kam utna zada
            height: size.height / 4,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Image.asset(
                  "assets/images/defaultdoctor.jpg",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
              width: size.width / 1,
              height: size.height / 10,
              color: Colors.indigo,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              )),
          Container(
              color: Colors.white,
              width: size.width / 1,
              height: size.height / 2,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        // color: Colors.blue,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/heart3.webp",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Specialization",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$specialization",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/clock3.webp",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Timings",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$timing",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        width: size.width / 20,
                        //color: MyTheme.creamColor,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/dayy6.webp",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Available From",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("$day",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ],
                        )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/email2.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$email",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/phone1.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$phonenumber",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/cnic1.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Cnic",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$cnic",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/address.jpg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$address",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/gender.webp",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Gender",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$gender",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/books1.webp",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Educations",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$education",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/education.webp",
                          height: 100,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Institute",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$institution",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            )),
                      ],
                    )),
                  ),
                  Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: MyTheme.darkbluishColor, width: 3)),
                    child: Container(
                        //color: MyTheme.creamColor,
                        child: Column(
                      children: [
                        Image.asset(
                          "assets/images/experience2.webp",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Experience",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("$experience",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ],
                    )),
                  ),
                ],
              )),
        ],
      ),
      //   ),
      drawer: MyDrawer(),
    );
  }
}
