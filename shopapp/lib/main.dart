import 'package:flutter/material.dart';
import 'package:shopapp/pages/home_page.dart';
import 'package:shopapp/pages/login.dart';
// import 'package:shopapp/pages/login.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}
