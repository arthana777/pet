import 'package:flutter/material.dart';

import 'asset.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          SuggestionImage(),
          SuggestionDetaials(),
        ],
      ),
    );
  }

  Widget SuggestionDetaials() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 120,
        color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              title: Text("fahad fazil"),
              subtitle: Text("4 mutual friends"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                children: [
                  iconButton(
                    buttonAction: () {
                      print("request friendship!");
                    },
                    buttonIcon: Icons.add_moderator,
                    buttonIconColor: Colors.white,
                    buttonText: 'add friend',
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),


      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),

      onPressed: buttonAction,

    );
  }

  Widget SuggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          fafa,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
