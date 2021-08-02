import 'package:flutter/material.dart';
import 'package:pos_system/views/Utilities_screen.dart';
import 'package:pos_system/views/categories_screen.dart';
import 'package:pos_system/views/home_screen.dart';
import 'package:pos_system/views/recipts_screen.dart';
import 'package:pos_system/views/stock_screen.dart';
import 'package:pos_system/views/table_screen.dart';
import 'drawer_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff35364D),
        child: Column(
          children: [
            const SizedBox(height: 70),
            Container(
              height: 85,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: const [
                    // Image.asset(
                    // "assets/images/user.png",
                    // scale: 10,
                    // ),
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
                      padding: EdgeInsets.only(left: 3, top: 18),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            DrawerItem(
              label: "Tables",
              icon: Icons.table_chart,
              onTap: () {
                return selectPage(context, 0);
              },
            ),
            DrawerItem(
              label: "Take Away",
              icon: Icons.local_drink,
              onTap: () {
                return selectPage(context, 1);
              },
            ),
            DrawerItem(
              label: "Utilities",
              icon: Icons.menu,
              onTap: () {
                return selectPage(context, 2);
              },
            ),
            DrawerItem(
                label: "Recipts",
                icon: Icons.receipt_long_sharp,
                onTap: () {
                  return selectPage(context, 3);
                }),
            DrawerItem(
                label: "Stock",
                icon: Icons.inventory,
                onTap: () {
                  return selectPage(context, 4);
                }),
            const Spacer(),
            DrawerItem(label: "Log out", icon: Icons.logout, onTap: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

void selectPage(BuildContext context, int index) {
  const HomeScreen();
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const TablesScreen();
      }));
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const CategoriesScreen();
      }));
      break;
    case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Utilities();
      }));
      break;
    case 3:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Recipts();
      }));
      break;
    case 4:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Stock();
      }));
      break;
  }
}
