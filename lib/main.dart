import 'package:flutter/material.dart';
// import 'package:learning/postsubmit.dart';
import 'welcome.dart';
import 'typeselection.dart';
import 'welcomebw.dart';
import 'adminform.dart';
import 'userhome.dart';
import 'samplecam.dart';
import 'adminlanding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      AdminLand(username: 'Keshav',email: 'ikeshav42@gmail.com',)
      // UserHomePageBW(username: 'Keshav', email: 'abc@gmail.com',),
      // home: WelcomeBW(),
    );
  }
}

