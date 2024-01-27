// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';

class SideBarUserInfo extends StatelessWidget {

  SideBarUserInfo({super.key, this.imgUrl = 'https://i.pinimg.com/564x/01/f8/2f/01f82f73d240a93d101e2bf4b8dd6d6d.jpg', this.radius=50});


  String imgUrl;
  double radius;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: CircleAvatar(
      backgroundImage: NetworkImage(imgUrl),
      radius: radius,
      )
    );
  }
}
