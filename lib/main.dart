import 'package:flutter/material.dart';

import 'pages/contact_page.dart';
import 'pages/contact_block_page.dart';
import 'pages/conversation_page.dart';
import 'pages/conversation_chat_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/contact',
      routes: {
        '/contact': (context) => const ContactPage(),
        '/contact-block': (context) => const ContactBlockPage(),
        '/conversation': (context) => const ConversationPage(),
        '/conversation-chat': (context) => const ConversationChatPage(),
      },
    );
  }
}
