import 'package:flutter/material.dart';
import 'package:foodapp/firstscreen.dart';
import 'package:foodapp/homescreen.dart';
import 'package:foodapp/login%20screen.dart';
import 'package:foodapp/productscreen.dart';
import 'package:foodapp/dish.dart';
import 'package:foodapp/orderscreen.dart';
import 'package:foodapp/fastfood.dart';
import 'package:foodapp/lastscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dish',
      home: Firstscreen(),
      color: Colors.pink,
    );
  }
}
