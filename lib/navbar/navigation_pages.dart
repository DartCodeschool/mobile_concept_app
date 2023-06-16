import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_concept_app/pages/kontakt_menu.dart';
import 'package:mobile_concept_app/pages/home_page.dart';
import 'package:mobile_concept_app/pages/konversationen.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key});

  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  int index = 0;

  final lists = [
    Profile_menu(),
    collaction_kontakte(),
    konversationen_page(),
    Container(color: Colors.yellow,),
    Container(color: Colors.orange,),
  ];
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: lists[index],
        bottomNavigationBar: ClipRRect(
          borderRadius: 
        const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: GNav(
            selectedIndex: index,
            onTabChange: (index) => setState(() => this.index = index),
            activeColor: const Color(0xFF666C79),
            backgroundColor: const Color(0xFFFFFFFF),
            tabs: const [
            GButton(icon: Icons.home, iconColor: Color(0xFFABB2C0),),
            GButton(icon: Icons.group, iconColor: Color(0xFFABB2C0),),
            GButton(icon: Icons.forum, iconColor: Color(0xFFABB2C0),),
            GButton(icon: Icons.public, iconColor: Color(0xFFABB2C0),),
            GButton(icon: Icons.settings, iconColor: Color(0xFFABB2C0),),
          ]),
        ),
      );
  }
}

