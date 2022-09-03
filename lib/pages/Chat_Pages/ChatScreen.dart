 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mychatapp/pages/Chat_Pages/ChatRoom.dart';
//import 'package:mychatapp/pages/ChatRoom.dart';
import 'package:mychatapp/pages/theme/themes.dart';
import 'package:velocity_x/velocity_x.dart'; 

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Map<String, dynamic>? doctorMap;
  // late Map<String, dynamic> patientMap;
  bool isLoading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _search = TextEditingController();
  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >
        user2[0].toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  //late DocumentSnapshot snapshot;
  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    //FirebaseFirestore _firestore1 = FirebaseFirestore.instance;
    //For Doctors
    setState(() {
      isLoading = true;
    });

    await _firestore
        .collection('Doctors')
        .where("D_Email", isGreaterThanOrEqualTo: _search.text)
        .get()
        .then((value) => {
              setState(
                () {
                  doctorMap = value.docs[0].data();
                  isLoading = false;
                },
              ),

              //print(doctorMap)
            });
  }

  @override
  Widget build(BuildContext context) {
    // DocumentSnapshot snapshot;
    final size = MediaQuery.of(context).size;

    //initState() {
    //super.initState();
//}

    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: "Chat Screen".text.color(context.cardColor).make(),
      ),
      body: isLoading
          ? Center(
              child: Container(
              height: size.height / 20,
              width: size.width / 20,
              child: CircularProgressIndicator(),
            ))
          : Column(
              children: [
                SizedBox(
                  height: size.height / 30,
                ),
                Container(
                    height: size.height / 14,
                    width: size.width,
                    child: Container(
                      alignment: Alignment.center,
                      height: size.height / 12,
                      width: size.width / 1,
                      child: SizedBox(
                        width: size.width / 1.1,
                        child: TextFormField(
                          controller: _search,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.people_alt_rounded,
                                  color: MyTheme.darkbluishColor),
                              hintText: "Search Doctor",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    )),
                SizedBox(
                  height: size.height / 40,
                ),
                ElevatedButton(
                  // if(snapsho)
                  onPressed: onSearch,
                  child: Text("Search"),
                ),
                doctorMap != null
                    ? ListTile(
                        onTap: () 
                        {
                          String roomId=chatRoomId(_auth.currentUser!.displayName.toString(), doctorMap!['name']);
                          
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ChatRoom(
                              chatRoomId: roomId,
                            )));},
                        leading: Icon(
                          CupertinoIcons.person_crop_circle,
                          color: MyTheme.darkbluishColor,
                        ),
                        title: Text(
                          doctorMap!['D_Name'],
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(doctorMap!['D_Email']),
                        trailing: Icon(
                          CupertinoIcons.chat_bubble,
                          color: MyTheme.darkbluishColor,
                        ),
                      )
                    : Container(),
              ],
            ),
    );
  }
}
