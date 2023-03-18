import 'package:abc/widgett/headerbutton.dart';
import 'package:flutter/material.dart';

class HeaderButtonSec extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSec({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
          verticalDivider,

        ],
      ),
    );
  }
}
