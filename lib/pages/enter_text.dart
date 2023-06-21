import 'package:flutter/material.dart';

class EnterText extends StatefulWidget {
  const EnterText({super.key});

  @override
  State<EnterText> createState() => _EnterTextState();
}

class _EnterTextState extends State<EnterText> {
  TextEditingController controllerFirstText = TextEditingController();
  List writing = [];

  Widget card(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.done_all, color: Color(0xFF36383D)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(color: Color(0xFFE2E9F6), borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0))),
                    child: Text(writing[index], style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                  ),
                ],
              ),
              const Text('13:37 Uhr', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
            ],
          ),
          Padding(padding: const EdgeInsets.only(right: 20.0, left: 9.0), child: Image.asset('images/rosso.png', height: 45, fit: BoxFit.fill)),
        ],
      ),
    );
  }

  void enterChats() {
    setState(() {
      if (controllerFirstText.text != '') {
        writing.add(controllerFirstText.text);
        controllerFirstText.text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // the chat session has started

        Expanded(child: ListView.builder(itemCount: writing.length, itemBuilder: card)),

        // the chat session is over

        // the input part has started

        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 73.0,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
              ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 240.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextField(controller: controllerFirstText, autofocus: true, decoration: const InputDecoration(border: InputBorder.none)),
                    ),
                  ),
                  const Icon(Icons.mood, color: Color(0xFFDCE3EF)),
                  const Padding(padding: EdgeInsets.only(right: 25.0, left: 10.0), child: Icon(Icons.photo_library, color: Color(0xFFDCE3EF))),
                  IconButton(onPressed: enterChats, icon: const Icon(Icons.send, color: Color(0xFF36383D))),
                ],
              ),
            ),
          ],
        ),

        // the text input part is finished
      ],
    );
  }
}
