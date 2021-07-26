import 'package:flutter/material.dart';
import 'package:new_project/Cashiery/SignIn.dart';
import 'dart:async';

import 'package:new_project/layout/components.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()))
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xff2F9B8B),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            alignment: Alignment.center,
            width: 500,
            child: textfield(Colors.black, 60, ("Cashiery"), FontWeight.w700)),
        textfield(Colors.black, 15, "We Keep You Going", FontWeight.w400)
      ],
    ));
  }
}
