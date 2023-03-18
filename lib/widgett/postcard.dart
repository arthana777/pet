import 'package:abc/avatar.dart';
import 'package:abc/headerbuttonsec.dart';
import 'package:abc/widgett/bluetik.dart';
import 'package:abc/widgett/headerbutton.dart';
import 'package:flutter/material.dart';
class PostCard extends StatelessWidget{
  late final String avatar;
  late final String name;
  late final String publishedAt;
  late final String postTitle;
  late final String postImage;
  late final bool showBlueTick;
  late final String likeCount;
  final String shareCount;
  final String commentCount;

      PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick=false,
  required this.likeCount,
  required this.shareCount,
  required this.commentCount,

});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        postCardHeadr(),
        titleSection(),
        imageSection(),
        footerSection(),
        displayText(label: ''),
        HeaderButtonSec(
          buttonOne: headerButton(

            buttonColor: Colors.grey,
              buttonText: "like",
              buttonIcon: Icons.thumb_up_alt_outlined,
            buttonAction: () {
            print("like this post");
          },
          ),
             
          buttonTwo: headerButton(
              buttonAction: () {
            print("comment on this post");
          },
            buttonColor: Colors.grey,
            buttonText: "comment",
            buttonIcon: Icons.message_outlined,

          ),
          buttonThree: headerButton(
              buttonText: "share",
              buttonIcon: Icons.share_outlined,
              buttonColor: Colors.green,
              buttonAction: () {
    print("share this post");
    },
              ),
          ),
      ],
      ),
    );
  }

  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child:Row(
              children: [
                Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child:Icon(Icons.thumb_up,
                color:Colors.white,
                size: 10,),
            ),
            SizedBox(width: 5),
            displayText(label: "10 k"),
              ],
            ),
    ),

          Container(
            child: Row(
              children: [
                displayText(label: "1k"),
                SizedBox(width:5),
                displayText(label: "comments"),
                SizedBox(width:15),
                displayText(label: "1k"),
                SizedBox(width:5),
                displayText(label: "shares"),
                SizedBox(width: 10),
                Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                  width:25,
                  height:25
                ),
                IconButton(
                    onPressed: (){
                      print("Drop drown pressed");
                    }, icon:Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }

  Widget displayText({
    required String label}){
    return Text(label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );

  }
  Widget imageSection(){
    return Container(
      padding: EdgeInsets.only(
        top: 5,bottom: 5,
      ),
      child: Image.asset(postImage),
    );

  }

  Widget titleSection(){
    return postTitle !=null && postTitle!="" ?
    Container(
      padding: EdgeInsets.only(
        bottom: 5,
        left: 10,
        right: 10,
      ),
      child: Text(
        postTitle==null ? " ":postTitle,
        style: TextStyle(
        color: Colors.black,
        fontSize: 16),
      ),
    ): sizedBox();

  }



postCardHeadr(){
 return ListTile(
    leading: Avatar(
      displayImage: avatar,
      displayStatus: false,
    ),
    title: Row(
      children: [
        Text(
          name,
          style:
          TextStyle(
              color: Colors.black),
        ),
        SizedBox(
            width:10),
        showBlueTick ? BlueTick() :sizedBox(),
      ],
    ),
    subtitle: Row(
      children: [
        Text(publishedAt ==null ?" " : publishedAt),
        SizedBox(
            width: 10),
        Icon(Icons.public,
          color: Colors.grey[700],
          size: 15,
        ),
      ],
    ),
    trailing: IconButton(

      onPressed: () {
        print("open more menu!");
      },
      icon: Icon(
        Icons.more_horiz,
        color: Colors.grey[700],
      ),
    ),
  );
}

  sizedBox() {}
}
