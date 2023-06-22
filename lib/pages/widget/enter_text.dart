import 'package:flutter/material.dart';

class EnterInputText extends StatefulWidget {
  const EnterInputText({super.key});

  @override
  State<EnterInputText> createState() => _EnterTextState();
}

class _EnterTextState extends State<EnterInputText> {
  TextEditingController controllerText = TextEditingController();
  List textInfo = [];

  Widget card(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(color: Color(0xFFDBFDD9), borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
                child: Row(
                  children: [
                    const Icon(Icons.done_all, color: Color(0xFF36383D)),
                    const SizedBox(width: 5.0),
                    Text(textInfo[index], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                  ],
                ),
              ),
              const Text('13:31 Uhr', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
            ],
          ),
          Image.asset('assets/images/rosso.png', height: 45, fit: BoxFit.fill),
        ],
      ),
    );
  }

  void addText() {
    setState(() {
      if (controllerText.text != '') {
        textInfo.add(controllerText.text);
        controllerText.text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(itemCount: textInfo.length, itemBuilder: card)),
        Container(
          height: 73,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 2, offset: Offset(0, 2)),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: 180,
                child: TextField(controller: controllerText, decoration: const InputDecoration(border: InputBorder.none)),
              ),
              const SizedBox(width: 50),
              const Icon(Icons.mood, color: Color(0xFFDCE3EF)),
              const Padding(
                padding: EdgeInsets.only(left: 9.0, right: 25.0),
                child: Icon(Icons.photo_library, color: Color(0xFFDCE3EF)),
              ),
              IconButton(onPressed: addText, icon: const Icon(Icons.send, color: Color(0xFF36383D))),
            ],
          ),
        ),
      ],
    );
  }
}
