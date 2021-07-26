import 'package:flutter/material.dart';
//import 'package:new_project/Todo%20App/Home_Todo.dart';
import 'package:new_project/Cashiery/welcomPage.dart';

import 'Todo App/Home_Todo.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeTodo());
  }
}
