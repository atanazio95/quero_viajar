import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});
  @override
  Size get preferredSize => Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.cyan,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              color: Colors.white,
            ))
      ],
    );
  }
}
