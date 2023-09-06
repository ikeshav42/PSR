import 'package:flutter/material.dart';
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
      home: UserHomePageBW(username: 'Keshav S', email: "ikeshav42@gmail.com"),
    );
  }
}

