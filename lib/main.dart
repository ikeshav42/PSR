import 'package:flutter/material.dart';
import 'package:learning/postform.dart';
// import 'package:learning/postsubmit.dart';
import 'welcome.dart';
import 'typeselection.dart';
import 'welcomebw.dart';
import 'adminform.dart';
import 'userhome.dart';
import 'samplecam.dart';
import 'adminlanding.dart';
import 'aland.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: 
      LandingPage(username: 'Keshav', email: 'ikeshav42@gmail.com', resolvedCount: 147,unresolvedCount: 83,));
      // Postform());
  }
}

