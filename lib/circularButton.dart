import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget{
  late final IconData buttonicon;
  late final void Function() buttonAction;
  final Color iconColor;
  CircularButton({
   required this.buttonicon,
    required this.buttonAction,
    this.iconColor =Colors.black,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonicon,
          color: iconColor,
        ), onPressed: buttonAction,
      ),
    );
  }

}