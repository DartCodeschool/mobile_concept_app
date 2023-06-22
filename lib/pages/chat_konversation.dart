import 'package:flutter/material.dart';
import 'package:mobile_concept_app/pages/widget/enter_text.dart';

class ChatKonversation extends StatelessWidget {
  const ChatKonversation({super.key});

  @override
  Widget build(BuildContext context) {
    final information = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(information['image']),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(information["title"], style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                  const Text('mein Status steht hier.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                ],
              )
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('assets/icon/Vector.png'))),
      body: const EnterInputText(),
    );
  }
}
