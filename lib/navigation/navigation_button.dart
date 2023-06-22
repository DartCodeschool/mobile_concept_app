import 'package:flutter/material.dart';
import '../moduls/routs.dart';

class NavigationNextPage extends StatelessWidget {
  const NavigationNextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 2, offset: Offset(0, 2), color: Colors.black12)]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Color(0xFF666C79)),
          unselectedItemColor: const Color(0xFFABB2C0),
          currentIndex: index['current'],
          onTap: (value) {
            if (value > 0 && value < 3) {
              index['current'] = value;
              Navigator.pushReplacementNamed(context, rout[value - 1]);
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.forum), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.public), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
    );
  }
}
