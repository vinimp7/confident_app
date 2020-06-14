import 'package:confidentapp/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: TextTheme(bodyText2: TextStyle(fontSize: 18.0))
    ),
    home: HomePage(),
  ));
}
