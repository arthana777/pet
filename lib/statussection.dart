import 'package:flutter/material.dart.';
import 'package:abc/asset.dart';
import 'package:abc/avatar.dart';


class StatusSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage:dq, displayStatus: true),
      title: TextField(
        decoration: InputDecoration(
          hintText: "whats on your mind?",
              hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),

    );
  }
  
}