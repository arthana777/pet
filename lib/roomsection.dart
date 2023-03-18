import 'package:abc/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'asset.dart';

class RoomSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
        createRoomButton(),
          Avatar(displayImage: dq, displayStatus: true),
          Avatar(displayImage: aish, displayStatus: true),
          Avatar(displayImage: alia, displayStatus: true),
          Avatar(displayImage: fafa, displayStatus: true),
          Avatar(displayImage: lalu, displayStatus: true),
          Avatar(displayImage: jayasurya, displayStatus: true),
          Avatar(displayImage: surya, displayStatus: true),
    ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
        child:OutlinedButton.icon(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                    side: BorderSide(color: Colors.red),
                  )
              )
          ),
          icon: Icon(Icons.video_call,
            color:Colors.purple,
          ),
          label: Text("create\n room",
            style: TextStyle(
              color:Colors.blue,
            ),),
          onPressed: () {
            print("creat a chat room!");
          },

        ),
    );
  }
}