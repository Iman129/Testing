import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/signin_p.dart';

import 'package:velocity_x/velocity_x.dart';

class PatientNavigationDrawer extends StatefulWidget {
  const PatientNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<PatientNavigationDrawer> createState() =>
      _PatientNavigationDrawerState();
}

class _PatientNavigationDrawerState extends State<PatientNavigationDrawer> {
  String name = '';
  String email = '';
  void getData() async {
    User? user = await FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance
        .collection("Patients")
        .doc(user?.uid)
        .get();
    if (mounted)
      setState(() {
        Visibility(visible: true, child: CircularProgressIndicator());
        if (vari.data() != null) {
          name = vari.data()!['P_Name'].toString();
          email = vari.data()!['P_Email'].toString();
        }
      });
  }

  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.canvasColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
            //Text("$name"),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage("assets/images/adminImage-01.png"),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$email",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text("Home"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.notifications_outlined),
          title: const Text("Notification"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.people_rounded),
          title: const Text("profile"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.mark_chat_read_outlined),
          title: const Text("chat history"),
          onTap: () {
            //  Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     builder: (context) => const DashboardPage(),
            //   ),
            // );
          },
        ),
        const Divider(color: Colors.indigo),
        ListTile(
          leading: const Icon(Icons.logout_rounded),
          title: const Text("Logout"),
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
        )
      ],
    );
  }
}
