import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/routes.dart';
import 'package:mychatapp/pages/theme/themes.dart';
import 'package:velocity_x/velocity_x.dart%20';

//import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  void HomeFunc(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.DocHomeR);
  }

  void DashFunc(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.DocDashR);
  }

  void ProfFunc(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.DocProfileR);
  }

  void UpdFunc(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.DocUpdateR);
  }

  @override
  // void moveToLogin(BuildContext context) async {
  // Navigator.pushNamed(context, MyRoutes.LoginRoute);
  // }

  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.white,

      child: Container(
        //color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.indigo),
                accountName: Text("Iman Ali",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                accountEmail: Text("aliiman288@gmail.com",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                //currentAccountPicture: Image.network(imageURL),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/defaultdoctor.jpg"),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                HomeFunc(context);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: MyTheme.darkbluishColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(  color: MyTheme.darkbluishColor,),
              ),
            ),
            ListTile(
               onTap: () {
                ProfFunc(context);
              },
              leading: Icon(
                CupertinoIcons.profile_circled,
                 color: MyTheme.darkbluishColor,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: MyTheme.darkbluishColor),
              ),
            ),
            ListTile(
               onTap: () {
                DashFunc(context);
              },
              leading: Icon(
                CupertinoIcons.graph_circle_fill,
                 color: MyTheme.darkbluishColor,
              ),
              title: Text(
                "Dashboard",
                textScaleFactor: 1.2,
                style: TextStyle(color: MyTheme.darkbluishColor),
              ),
            ),
            ListTile(
              onTap: () {
                UpdFunc(context);
              },
              leading: Icon(
                CupertinoIcons.doc_chart_fill,
                 color: MyTheme.darkbluishColor,
              ),
              title: Text(
                "Update Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: MyTheme.darkbluishColor),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.black,
            ),
               ListTile(
              onTap: () {
                UpdFunc(context);
              },
              leading: Icon(
                Icons.logout,
                color: MyTheme.darkbluishColor,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: MyTheme.darkbluishColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
