import 'package:flutter/material.dart';
import 'package:flutter0/screens/login.dart';
import 'package:flutter0/screens/signup.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: LoginScreen(),
      
    );
  }
}



  


