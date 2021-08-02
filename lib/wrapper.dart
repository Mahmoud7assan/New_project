import 'package:flutter/material.dart';
import 'package:pos_system/views/categories_screen.dart';
import 'package:pos_system/views/home_screen.dart';
import 'package:pos_system/views/login_screen.dart';
import 'package:pos_system/views/table_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),
      home: HomeScreen(),
    );
  }
}
