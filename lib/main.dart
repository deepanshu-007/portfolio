

import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/education_details.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: 'home',
    home: Myhome(),
    debugShowCheckedModeBanner: false,
    routes: {
      'home':(context)=> Myhome(),
      'about':(context)=> myAbout(),
      'projects':(context)=>Myprojects(),
      'education_details':(context)=>MyEducation(),
    },
  ));
}
