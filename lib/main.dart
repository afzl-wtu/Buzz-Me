import 'package:buzz_me/screens/SignIn.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIns(),
      debugShowCheckedModeBanner: false,
    );
  }
}
