import 'package:flutter/material.dart';
import 'Screen/LoginPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity,
         canvasColor:Colors.transparent,
         fontFamily: 'Montserrat',
      ),

      home: LoginPage(),
    );
  }
}
