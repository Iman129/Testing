import 'package:flutter/material.dart';
import 'package:mychatapp/pages/routes.dart';

import '../theme/themes.dart';
import '../widgets/drawer.dart';

class DocHome extends StatefulWidget {
  @override
  State<DocHome> createState() => _DocHomeState();
}

class _DocHomeState extends State<DocHome> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.darkbluishColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
            width: 20,
          ),
          Container(
            color: Colors.white,
            //color: Colors.white.withOpacity(0.2),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Welcome Doctor!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.darkbluishColor),
              ),
            ),
          ),
          SizedBox(
            height: 15,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: Colors.white.withOpacity(0.2),
              width: size.width / 1,
              height: size.height / 2.2,

              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                children: [
                  Container(
                    decoration: BoxDecoration
                    (boxShadow: [
                      BoxShadow(       
                   color: Colors.indigo.withOpacity(.5),
                  // blurRadius: 10.0, // soften the shadow
                   //spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 10  horizontally
                        2.0, )  )]),
                    child: Card(
                      color: Colors.indigo,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: MyTheme.darkbluishColor, width: 0)),
                      child: Container(
                          //height: 10,
                          // color: Colors.blue,
                          child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.DocHomeR),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/home.png",
                              height: 130,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            //Spacer(),
                            Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                  Container(
                decoration: BoxDecoration
                    (boxShadow: [
                      BoxShadow(       
                   color: Colors.indigo.withOpacity(.5),
                  // blurRadius: 10.0, // soften the shadow
                   //spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 10  horizontally
                        2.0, )  )]),
                    child: Card(
                      color: Colors.indigo,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                              color: MyTheme.darkbluishColor, width: 0)),
                      child: Container(
                          // color: Colors.blue,
                          child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.DocProfileR),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/profiled.png",
                              height: 130,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                  Container(
            decoration: BoxDecoration
                    (boxShadow: [
                      BoxShadow(       
                   color: Colors.indigo.withOpacity(.5),
                  // blurRadius: 10.0, // soften the shadow
                   //spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 10  horizontally
                        2.0, )  )]),
                    child: Card(
                      color: Colors.indigo,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                              color: MyTheme.darkbluishColor, width: 0)),
                      child: Container(
                          // color: Colors.blue,
                          child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.DocDashR),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/dashb.png",
                             height: 130,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                  Container(
                decoration: BoxDecoration
                    (boxShadow: [
                      BoxShadow(       
                   color: Colors.indigo.withOpacity(.5),
                  // blurRadius: 10.0, // soften the shadow
                   //spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 10  horizontally
                        2.0, )  )]),
                    child: Card(
                      color: Colors.indigo,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                              color: MyTheme.darkbluishColor, width: 0)),
                      child: Container(

                          // color: Colors.blue,
                          child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.DocUpdateR),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/updatd.png",
                              height: 130,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Update Profile",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            height: 80,
            child: Row(
              children: <Widget>[
                Column(
                  children: [
                    IconButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, MyRoutes.DocHomeR),
                        icon: Icon(
                          Icons.home,
                          color: MyTheme.darkbluishColor,
                        )),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: MyTheme.darkbluishColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, MyRoutes.DocUpdateR),
                        icon: Icon(
                          Icons.settings,
                          color: MyTheme.darkbluishColor,
                        )),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: MyTheme.darkbluishColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    IconButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, MyRoutes.DocHomeR),
                        icon: Icon(
                          Icons.history,
                          color: MyTheme.darkbluishColor,
                        )),
                    Text(
                      "History",
                      style: TextStyle(
                          color:MyTheme.darkbluishColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // Divider(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
