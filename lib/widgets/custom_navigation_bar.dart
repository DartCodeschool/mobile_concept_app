import 'package:flutter/material.dart';

import '../modul/routes.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index['current'],
      onTap: (value) {
        Navigator.pushReplacementNamed(context, route[value]);
        index['current'] = value;
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
      ],
    );
  }
}
