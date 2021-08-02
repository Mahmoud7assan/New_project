import 'package:flutter/material.dart';

class IndicatorBox extends StatelessWidget {
  const IndicatorBox();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Column(
                    children: const [
                      SizedBox(height: 20),
                      CircleAvatar(backgroundColor: Colors.green, radius: 6),
                    ],
                  ),
                  title: const Text('Avail',
                      style: TextStyle(color: Colors.white)),
                  trailing:
                      const Text('--', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Column(
                    children: const [
                      SizedBox(height: 20),
                      CircleAvatar(backgroundColor: Colors.grey, radius: 6),
                    ],
                  ),
                  title: const Text(
                    'non-Avail',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing:
                      const Text('--', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )),
    );
  }
}
