import 'package:flutter/material.dart';
import 'package:mobile_concept_app/pages/chat_konversation.dart';
import 'package:mobile_concept_app/pages/contact_information.dart';
import 'package:mobile_concept_app/pages/contact_menu.dart';
import 'package:mobile_concept_app/pages/konversation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/contact',
      routes: {
        '/contact': (context) => const ContactMenu(),
        '/contact-information': (context) => const ContactInformation(),
        '/konversation': (context) => const Konversation(),
        '/chat-konversation': (context) => const ChatKonversation(),
      },
    );
  }
}
