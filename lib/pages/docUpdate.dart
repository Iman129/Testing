import 'package:flutter/material.dart';
import 'package:mychatapp/pages/theme/themes.dart';
import 'package:mychatapp/pages/widgets/drawer.dart';

class DocUpdate extends StatelessWidget {
  const DocUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Update",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyTheme.darkbluishColor),),
        ),
        body: Container(child:Text("Update me",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: MyTheme.darkbluishColor),)),
        drawer: MyDrawer(),
    );
  }
}
