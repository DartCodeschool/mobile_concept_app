import 'package:flutter/material.dart';
import 'package:mobile_concept_app/widgets/custom_navigation_bar.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('Conversation page'),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
