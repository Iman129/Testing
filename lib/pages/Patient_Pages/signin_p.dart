import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Patient_Pages/Patient_Dashboard.dart';
import 'package:mychatapp/pages/Patient_Pages/signup_p.dart';
import 'package:mychatapp/passwordupdate/forgotpassword.dart';

import '../../reuseable_widget/reuseablewidget.dart';
import '../utils/colors_utils.dart';
import 'homeScreen_p.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("FFFFFF"),
            hexStringToColor("0000FF"),
            hexStringToColor("0D98BA"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: [
                logoWidget("assets/images/doc.png"),
                const SizedBox(
                  height: 30,
                ),
                reuseableTextField("Enter Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reuseableTextField("Enter Password", Icons.lock, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInsignUpButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    // print(FirebaseAuth.instance.currentUser);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>PatientDashboardPage() ));
                  }).onError((error, stackTrace) {
                    print("Error: ${error.toString()}");
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Something went wrong, please try again',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
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
                  });
                }),
                signUpOption(),
                SizedBox(height: 10,),
                forgotpass()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => signUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
    
  }
   Row forgotpass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Forgot Password? ",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ForgotPassword()));
          },
          child: const Text(
            "Click here",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
