// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/sidebar_menu.dart';
import 'package:flutter_todo/widgets/sidebar_userinfo.dart';

class SideBar extends StatelessWidget{
  const SideBar({super.key});

  void goToPage(BuildContext context, String page){
    Navigator.pushNamed(context, page);
  }
  
  
  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Colors.blue[200],
      child:
          Column( 
            children: [
              SideBarUserInfo(),
              SideBarMenu(text: "Home", icon: Icon(Icons.home), onTap: () => goToPage(context, "/homepage")),
              SideBarMenu(text: "Tasks", icon: Icon(Icons.task), onTap: () => goToPage(context, "/tasklist")),
              SideBarMenu(text: "Settings", icon: Icon(Icons.settings), onTap: () => print("Settings")),
              SideBarMenu(text: "Purchase", icon: Icon(Icons.payment), onTap: () => print("Purchase")),
              SideBarMenu(text: "Logout", icon: Icon(Icons.logout), onTap: () => print("Logout")),
            ]
          ),
      );
  }

}