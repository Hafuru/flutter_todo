// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class SideBarMenu extends StatelessWidget{
  SideBarMenu({super.key, required this.text, required this.icon, required this.onTap});

  String text;
  Icon icon;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context)
  {
    return ListTile(
      leading: icon,
      title: Text(text),
      onTap: onTap
    );
  }
}
