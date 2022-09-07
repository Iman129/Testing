import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Panel/pages/doctorProfile.dart';

import 'package:velocity_x/velocity_x.dart';

class AllDoctorsPage extends StatefulWidget {
  AllDoctorsPage({Key? key}) : super(key: key);

  @override
  State<AllDoctorsPage> createState() => _AllDoctorsPageState();
}

class _AllDoctorsPageState extends State<AllDoctorsPage> {
  final TextEditingController _D_IdController = TextEditingController();
  final TextEditingController _D_AddressController = TextEditingController();
  final TextEditingController _D_EmailController = TextEditingController();
  final TextEditingController _D_PasswordController = TextEditingController();
  final TextEditingController _D_NameController = TextEditingController();
  final TextEditingController _D_PhoneNumberController =
      TextEditingController();
  final TextEditingController _D_CnicController = TextEditingController();
  final TextEditingController _D_GenderController = TextEditingController();

  final CollectionReference _Doctors =
      FirebaseFirestore.instance.collection('Doctors');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.indigo,
        title: "All doctors".text.xl4.bold.color(context.accentColor).make(),
      ),
      body: StreamBuilder(
        stream: _Doctors.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            final DoctorDocs = streamSnapshot.data!.docs;
            return ListView.builder(
              itemCount: DoctorDocs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot = DoctorDocs[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DoctorProfilePage(
                          Doctordetails: DoctorDocs[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 120,
                    width: context.screenWidth,
                    child: Card(
                      color: context.cardColor,
                      //margin: const EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      elevation: 4,
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.only(left: 10, top: 10),
                              // alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/defaultdoctor.jpg",
                                    ),
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.center),
                              ),
                            ).pOnly(top: 10, left: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "${DoctorDocs[index]["D_Name"].toString()}"
                                    .text
                                    .bold
                                    .xl2
                                    .color(context.accentColor)
                                    .make()
                                    .px8(),
                                "${DoctorDocs[index]["D_Email"].toString()}"
                                    .text
                                    .bold
                                    .xl
                                    .textStyle(context.captionStyle)
                                    .make()
                                    .px8(),
                                "Online"
                                    .text
                                    .bold
                                    .size(16)
                                    .color(Colors.green)
                                    .make()
                                    .px8(),
                              ],
                            )
                          ]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
