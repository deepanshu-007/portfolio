import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> str = [
      "Pursuing Computer Science Engineering from LNCT, Bhopal.",
      "Currently in my 4th semester with an overall CGPA of 8.",
      "Pursued my Senior Secondary and Higher Secondary schooling from Pragati Vidhya Peeth, Gwalior.",
      "Scored 75% in my Senior Secondary.",
      "Scored 93% in my Higher Secondary."
      ];
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       leading: Icon(FontAwesomeIcons.buildingColumns),
        elevation: 0,
        title: Text('Educational Qualifications',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
      ),
      body:Container(
        margin: EdgeInsets.only(top: 100,left: 20,right: 20),
        child: Column(
          children:  str.map((strone){
      return Row(
      children:[
      Text("*", style: TextStyle(fontSize: 25,color: Colors.white),), //bullet text
      SizedBox(width: 10,), //space between bullet and text
      Expanded(
      child: Text(strone, style: TextStyle(fontSize: 25,color: Colors.white),)), //text
      ]
      );
      }).toList(),
        ),
      ) ,
    );
  }
}
