import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies App",
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
