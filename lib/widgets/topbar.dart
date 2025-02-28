import 'package:flutter/material.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {

  const Topbar({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF403535),
      leading: IconButton(
        icon: Icon(Icons.menu_rounded),
        color: Theme.of(context).colorScheme.onPrimary,
        onPressed: () => Scaffold.of(context).openDrawer()
      ),
      title: Text(title, 
        style: TextStyle(
          fontFamily: "Ditty",
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 24
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}