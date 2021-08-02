import 'package:flutter/material.dart';
import 'package:pos_system/views/table_screen.dart';
import 'package:pos_system/widgets.dart';
import './categories_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        actions: const [
          Icon(Icons.monetization_on, color: Colors.white),
          SizedBox(width: 20)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InputButton(
                label: 'Tables',
                fontSize: 20,
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const TablesScreen();
                  }));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InputButton(
              label: 'Take Away',
              fontSize: 20,
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CategoriesScreen();
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child:
                InputButton(label: 'Utilities', fontSize: 20, function: () {}),
          ),
        ],
      ),
    );
  }
}
