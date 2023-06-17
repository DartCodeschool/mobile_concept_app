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

  final lists = const [
    Profile_menu(),
    collaction_kontakte(),
    konversationen_page(),
    Profile_menu(),
    Profile_menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 247, 251),
      body: lists[index],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 1)]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: GNav(
            selectedIndex: index,
            onTabChange: (index) {
              print(index);
              if (index > 0 && index < 3) {
                setState(() => this.index = index);
              }
            },
            activeColor: const Color(0xFF666C79),
            backgroundColor: const Color(0xFFFFFFFF),
            tabs: const [
              GButton(
                icon: Icons.home,
                iconColor: Color(0xFFABB2C0),
              ),
              GButton(
                icon: Icons.group,
                iconColor: Color(0xFFABB2C0),
              ),
              GButton(
                icon: Icons.forum,
                iconColor: Color(0xFFABB2C0),
              ),
              GButton(
                icon: Icons.public,
                iconColor: Color(0xFFABB2C0),
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Color(0xFFABB2C0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
