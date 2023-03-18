
import 'package:abc/circularButton.dart';
import 'package:abc/roomsection.dart';
import 'package:abc/statussection.dart';
import 'package:abc/storysec.dart';
import 'package:abc/suggestionsec.dart';
import 'package:abc/widgett/headerbutton.dart';
import 'package:abc/widgett/postcard.dart';
import 'package:flutter/material.dart';
import 'package:abc/headerbuttonsec.dart';
import 'asset.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: Text("zukerbook",
            style: TextStyle(
            color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            CircularButton(
                buttonicon: Icons.search,
                buttonAction: (){
                  print("serch screen appears!");
                },),
            CircularButton(
                buttonicon: Icons.chat,
                buttonAction: (){
                  print("messanger appears!");
                })
          ],
        ) ,
        body: ListView(
            children:[
              StatusSection(),
              Divider(thickness: 1,color: Colors.grey[300],
              ),
              HeaderButtonSec(
                  buttonOne: headerButton(
                      buttonText: "Live",
                      buttonIcon: Icons.video_call,
                      buttonAction: (){
                print("Go a live");},

                      buttonColor:Colors.orange,

                      ),

              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: (){
                print("add a photo");},
                  buttonColor: Colors.red),
               buttonThree:headerButton(
                   buttonText: "Room",
                   buttonIcon: Icons.video_call,
                   buttonAction: (){
                     print("create a room");},
                   buttonColor: Colors.brown),

              ),
              Divider(thickness: 1,color: Colors.grey[300],
              ),
        RoomSection(),
              Storysec(),
        Divider(thickness: 1,color: Colors.grey[300],
        ),
              PostCard(
                  name:"mohanlal",
              avatar: lalu,
                publishedAt: '5 hr',
                postTitle: "Hapy Diwalii",
                postImage: monster,
                showBlueTick: true,
                likeCount:"1k",
                shareCount: '1ok',
                commentCount: '1k',
              ),
              Divider(thickness: 1,color: Colors.grey[300],
              ),
              PostCard(
                name:"aiswaryalakshmi",
                avatar: aish,
                publishedAt: '1 hr ago',
                postTitle: "Bliss",
                postImage: ps1aishwarya,
                showBlueTick: true,
                likeCount:"1k",
                shareCount: '1ok',
                commentCount: '1k',
              ),
              Divider(thickness: 1,color: Colors.grey[300],
              ),

              SuggestionSec(),
              Divider(thickness: 1,color: Colors.grey[300],
              ),
              PostCard(
                name:"surya",
                avatar: surya,
                publishedAt: '4 hr ago',
                postTitle: " ",
                postImage: award,
                showBlueTick: true,
                likeCount:"1k",
                shareCount: '1ok',
                commentCount: '1k',
              ),
              Divider(thickness: 1,color: Colors.grey[300],
              ),

              PostCard(
                name:"jayasurya",
                avatar: jayasurya,
                publishedAt: '9 hr ago',
                postTitle: " ",
                postImage: sunny,
                showBlueTick: true,
                likeCount:"1k",
                shareCount: '1ok',
                commentCount: '1k',
              ),

      ],
        ),

      ),
    );
  }


}