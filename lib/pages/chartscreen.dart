import 'package:flutter/material.dart';
import 'package:medical_healthcare/pages/chartsample.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor:Colors.blue,
            leadingWidth:30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Dr Moya",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(Icons.call,
            color: Colors.white,
              size: 20,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8,right: 20),
              child: Icon(Icons.video_call,
                color: Colors.white,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8,right: 10),
              child: Icon(Icons.more_vert,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20,left: 15,bottom: 80,right: 15),
        itemBuilder: (context,index)=>ChatSample()
       ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ]
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
              size: 30,),
            ),
            Padding(padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.emoji_emotions,
            size: 30,
              color: Colors.amber,
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width/1.7,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Type Here",
                  border: InputBorder.none,
                ),
              ),
            ),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(
                Icons.send,
            size: 30,
              color: Colors.blue,
            )
              ,)
          ],
        ),
      ),
    );
  }
}
