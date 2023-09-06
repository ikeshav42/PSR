import 'package:flutter/material.dart';
// import 'package:learning/postsubmit.dart';
import 'welcome.dart';
import 'typeselection.dart';
import 'welcomebw.dart';
import 'adminform.dart';
import 'userhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeBW(),
    );
  }
}

