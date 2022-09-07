import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Doctor_Pages/docdashboard.dart';
import 'package:mychatapp/pages/Doctor_Pages/dochome.dart';
import 'package:mychatapp/pages/Doctor_Pages/doctorprofile.dart';
import 'package:mychatapp/pages/Doctor_Pages/signin_D.dart';
import 'package:mychatapp/pages/Doctor_Pages/docUpdate.dart';
import 'package:mychatapp/pages/mainHome.dart';
import 'package:mychatapp/pages/routes.dart';
import 'package:mychatapp/passwordupdate/forgotpassword.dart';
import 'package:mychatapp/passwordupdate/updatepass.dart';
import 'firebase_options.dart';


final auth = FirebaseAuth.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      // home: auth.currentUser == null ? SigninScreen() : HomeScreen(),
      
         routes: {
        "/": (context) =>MainHome() , //by default this page
        MyRoutes.DocHomeR: (context) => DocHome(),
        MyRoutes.DocProfileR: (context) => docProfile(),
        MyRoutes.DocDashR: (context) => DocDashboard(),
        MyRoutes.DocUpdateR: (context) => UpdateDoc(),
         MyRoutes.Forgotpass: (context) => ForgotPassword(),
         MyRoutes.Updatepass: (context) => ChangePassword(),
      }, 
    );
  }
}


/* final auth = FirebaseAuth.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
   runApp(const MyApp());
  //Color.fromARGB(255, 24, 97, 27)
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context), //from class of theme
      //initialRoute: MyRoutes.HomeRoute,
      //initialRoute: "/",
      routes: {
        "/": (context) =>MainHome() , //by default this page
        MyRoutes.DocHomeR: (context) => DocHome(),
        MyRoutes.DocProfileR: (context) => docProfile(),
        MyRoutes.DocDashR: (context) => DocDashboard(),
        MyRoutes.DocUpdateR: (context) => DocUpdate(),
      },
    );
  }


}

 */