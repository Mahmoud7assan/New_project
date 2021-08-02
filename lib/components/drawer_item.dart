import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final String label;
  const DrawerItem({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.white,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
