import 'package:flutter/material.dart';

import '../layout/components.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: Color(0xff35364D),
          child: Column(
            children: [
              SizedBox(height: 70),
              Container(
                height: 85,
                width: 170,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/user.png",
                        scale: 10,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Admin\nonline",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 18),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.black12),
              ),
              SizedBox(
                height: 20,
              ),
              list("Menu", Icons.menu, () {}),
              list("Bills", Icons.receipt, () {}),
              list("Stock", Icons.inventory, () {}),
              list("Message", Icons.message, () {}),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: textfield(Colors.white, 23, "Others", FontWeight.normal),
              ),
              list("Notifications", Icons.notifications, () {}),
              list("Settings", Icons.settings, () {}),
              list("Help", Icons.help, () {}),
              SizedBox(
                height: 40,
              ),
              list("Log out", Icons.logout, () {})
            ],
          ),
        ),
      );

  Widget list(String title, IconData icon, Function function) => ListTile(
        onTap: function,
        leading: Icon(
          icon,
          color: Colors.white,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
}
