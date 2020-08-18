import 'package:flutter/material.dart';
import 'package:registration/Login1.dart';
import 'package:registration/Login2.dart';
import 'package:registration/Login3.dart';
import 'package:registration/Login4.dart';
import 'package:registration/Login6.dart';
import 'package:registration/Login7/Login7.dart';

import 'Login5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login7(),
    );
  }
}