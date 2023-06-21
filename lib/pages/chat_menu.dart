import 'package:flutter/material.dart';
import 'enter_text.dart';

class ChatMenu extends StatelessWidget {
  final String title;
  final String avatar;
  const ChatMenu({
    required this.title,
    required this.avatar,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(avatar),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                const Text('mein Status steht hier.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
              ],
            ),
          ],
        ),
      ),

      // body part started

      body: const EnterText(),

      //  the body part is over
    );
  }
}
