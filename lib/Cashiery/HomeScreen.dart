import 'package:flutter/material.dart';
import 'package:new_project/layout/components.dart';

import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Menu"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.monetization_on),
          )
        ],
      ),
      drawer: Drawerr(),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120, top: 30),
            child: textfield(Colors.black, 40, "Cashiery", FontWeight.w400),
          ),
          SizedBox(height: 15),
          
        ],
      ),
    );
  }
}

// Widget list(Widget widget, Text title, Function onTap) => ListTile(
//       leading: widget,
//       title: title,
//       onTap: onTap,
//     );
