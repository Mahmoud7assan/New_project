// import 'package:flutter/material.dart';

// //import '../layout/components.dart';
// class Menus {
//   String text;
//   IconData icon;
//   Function function;
//   Menus({this.text, this.icon, this.function});
// }

// class Drawerr extends StatefulWidget {
//   @override
//   _DrawerrState createState() => _DrawerrState();
// }

// class _DrawerrState extends State<Drawerr> {
//   String text;
//   IconData icon;
//   Function function;
//   List<Menus> menus = [
//     Menus(text: "Menus", icon: Icons.menu, function: () {}),
//     Menus(text: "Bills", icon: Icons.receipt, function: () {}),
//     Menus(text: "Stock", icon: Icons.inventory, function: () {}),
//     Menus(text: "Message", icon: Icons.message, function: () {}),
//   ];

//   @override
//   Widget build(BuildContext context) => Drawer(
//         child: Container(
//           color: Color(0xff35364D),
//           child: Column(children: [
//             SizedBox(height: 70),
//             Container(
//               height: 85,
//               width: 170,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 25),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       "assets/images/user.png",
//                       scale: 10,
//                     ),
//                     SizedBox(
//                       width: 4,
//                     ),
//                     Text(
//                       "Admin\nonline",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 3, top: 18),
//                       child: CircleAvatar(
//                         radius: 3,
//                         backgroundColor: Colors.green,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(45),
//                   color: Colors.black12),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ListView.separated(
//                 itemBuilder: (context, index) => buildList(menus[index]),
//                 separatorBuilder: (context, index) => SizedBox(
//                       height: 10,
//                     ),
//                 itemCount: menus.length)
//           ]),
//         ),
//       );

//   Widget buildList(Menus user) => ListTile(
//       leading: Icon(
//         user.icon,
//         color: Colors.white,
//         size: 26,
//       ),
//       title: Text(
//         '{$user.text}',
//         style: TextStyle(color: Colors.white, fontSize: 18),
//       ),
//       onTap: user.function);
// }
