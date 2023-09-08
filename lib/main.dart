import 'package:flutter/material.dart';
// import 'package:learning/postsubmit.dart';
import 'welcome.dart';
import 'typeselection.dart';
import 'welcomebw.dart';
import 'adminform.dart';
import 'userhome.dart';
import 'samplecam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserHomePageBW(username: 'Keshav', email: 'abc@gmail.com',),
      // home: WelcomeBW(),
    );
  }
}

