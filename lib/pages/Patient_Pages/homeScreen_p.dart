import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/signin_p.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final currentUser = FirebaseAuth.instance;
  String name = '';
  String address = '';
  String email = '';
  String password = '';
  String role = "";

  void getData() async {
    User? patient = FirebaseAuth.instance.currentUser!;
    var vari = await FirebaseFirestore.instance
        .collection('Patients')
        .doc(patient.uid)
        .get();

    setState(() {
      if (vari.data() != null) {
        name = vari.data()!['P_Name'].toString();
        address = vari.data()!['P_Address'];
        email = vari.data()!['P_Email'];
        password = vari.data()!['P_Password'];
        role = vari.data()!['role'];
      } else {
        name = "Received Empty Value";
        address = "Received Empty Value";
        email = "Received Empty Value";
        password = "Received Empty Value";
        role = "Received Empty Value";
      }
    });
  }

  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(children: [
             
              Text(
                'Name: $name',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Address: $address',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Email: $email',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Password: $password',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Role: $role',
                style: const TextStyle(fontSize: 20),
              ),
            ]),
          ),
          Center(
            child: ElevatedButton(
              child: Text("Log Out"),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                print('Signed out');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigninScreen()));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'You have been signed out. See you soon!',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    backgroundColor: Colors.indigo,
                    shape: Border(
                      top: BorderSide(
                        color: Colors.indigo,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: Colors.indigo,
                        width: 2,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
