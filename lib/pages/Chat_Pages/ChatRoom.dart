import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  final Map<String, dynamic>? doctorMap;
  final String chatRoomId;
  final TextEditingController _message = TextEditingController();
  ChatRoom({required this.chatRoomId, this.doctorMap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Name"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height / 1.25,
                width: size.width,
                child: StreamBuilder<QuerySnapshot>(
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {

                    if (snapshot.data != null) {
                      return ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: ((context, index) {
                          return Text(snapshot.data?.docs[index]['message']);
                        }));
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              Container(
                height: size.height / 10,
                width: size.width,
                alignment: Alignment.center,
                child: Container(
                  height: size.height / 12,
                  width: size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height / 17,
                        width: size.width / 1.3,
                        child: TextField(
                          controller: _message,
                          decoration: InputDecoration(

                              // hintText: "Send Message",
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                      ),
                      IconButton(icon: Icon(Icons.send), onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
 