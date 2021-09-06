import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gitaproject/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:gitaproject/authentication/Login.dart';
//import 'package:gitaproject/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()
        //HomeScreen(),
        );
  }
}
