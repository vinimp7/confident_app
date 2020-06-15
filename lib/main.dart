import 'package:confidentapp/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.white70,
      textTheme: TextTheme(bodyText2: TextStyle(fontSize: 18.0))
    ),
    home: HomePage(),
  ));
}
