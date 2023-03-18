import 'package:abc/suggestioncard.dart';
import 'package:flutter/material.dart';

class SuggestionSec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     height: 400,
     child: Column(
       children: [
         ListTile(
           title: Text("people you may know"),
           trailing: IconButton(
             onPressed:(){
               print("More clicked!");
             } , icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
           ),
         ),
         Container(
           child:Expanded(
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
 SuggestionCard(),
               ],
             ),
           )
         )
       ],
     ),
   );
  }

}