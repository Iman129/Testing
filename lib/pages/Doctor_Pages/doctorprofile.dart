import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/theme/themes.dart';
import 'package:mychatapp/pages/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart%20';

class docProfile extends StatelessWidget {

void GetData() async{
 User? user= FirebaseAuth.instance.currentUser;

}
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyTheme.darkbluishColor),),
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
                      "drExample",
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
                          Text("Cardiologist",
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
                          Text("2pm-7pm",
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
                              Text("Mon-Wed",
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
                          Text("Iman12@gmail.com",
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
                          Text("03335735401",
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
                          Text("6110086",
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
                          Text("Islamabad",
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
                          Text("Female",
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
                          Text("MBBS doctor",
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
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Institute",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("Oxford University, London",
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
                          Text("10 Years",
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
