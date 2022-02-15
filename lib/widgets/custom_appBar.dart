import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String? title;
  CustomAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 30,
      title: Text(
        title!,
        style: const TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(color: Colors.yellowAccent),
      ),
      elevation: 5,
      titleSpacing: 10,
    );
  }
}
