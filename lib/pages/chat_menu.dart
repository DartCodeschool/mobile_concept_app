import 'package:flutter/material.dart';
import 'package:mobile_concept_app/pages/konversationen.dart';

class ChatMenu extends StatelessWidget {
  final String title;
  final String avatar;
  const ChatMenu({
    required this.title,
    required this.avatar,
  });

  Widget firstPerson() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset('images/lexsi.png', height: 45, fit: BoxFit.fill),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(color: Color(0xFFE2E9F6), borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                child: Row(
                  children: const [
                    Text('Ja mega gut. Danke dir.', style: TextStyle(fontSize: 14.4, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                    Icon(Icons.done_all),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(color: Color(0xFFE2E9F6), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                child: Row(
                  children: const [
                    Text('Alles klar!', style: TextStyle(fontSize: 14.4, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                    Icon(Icons.done_all),
                  ],
                ),
              ),
              const Text('13:37 Uhr', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
            ],
          ),
        ],
      ),
    );
  }

  // Widget secondPerson() {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 20.0, top: 10.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.end,
  //           children: [
  //             Container(
  //               padding: const EdgeInsets.all(8.0),
  //               decoration: const BoxDecoration(color: Color(0xFFDBFDD9), borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15), topRight: Radius.circular(15))),
  //               child: Row(
  //                 children: const [
  //                   Icon(Icons.done_all),
  //                   Text('Dann machen wir das so.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
  //                 ],
  //               ),
  //             ),
  //             const SizedBox(height: 6.0),
  //             const Text('13:37 Uhr', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
  //           ],
  //         ),
  //         const SizedBox(height: 5.0),
  //         Image.asset(avatar, height: 45, fit: BoxFit.fill),
  //       ],
  //     ),
  //   );
  // }

  @override
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

      body: EnterText(),

      //  the body part is over
    );
  }
}

class EnterText extends StatefulWidget {
  const EnterText({super.key});

  @override
  State<EnterText> createState() => _EnterTextState();
}

class _EnterTextState extends State<EnterText> {
  TextEditingController controllerFirstText = TextEditingController();
  List writing = ['fhjjfk', 'hjkj'];

  Widget card(BuildContext context, int index) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 20.0, top: 17.0),
          child: Image.asset('images/senna.png', height: 45, fit: BoxFit.fill),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E9F6),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
                  ),
                  child: Text(
                    writing[index],
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),
                  ),
                ),
                Icon(
                  Icons.done_all,
                  color: Color(0xFF36383D),
                )
              ],
            ),
            Text(
              '13:37 Uhr',
              style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),
            ),
          ],
        ),
      ],
    );
  }

  Widget seperator(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }

  void func() {
    setState(() {
      if (controllerFirstText.text != '') {
        writing.add(controllerFirstText.text);
        controllerFirstText.text = '';
      }
      print(writing);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // the chat session has started

        Expanded(child: ListView.separated(itemCount: writing.length, separatorBuilder: seperator, itemBuilder: card)),

        // the chat session is over

        // the input part has started

        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 73.0,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ]),
              child: Row(
                children: [
                  Container(
                    width: 240.0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextField(
                        controller: controllerFirstText,
                        autofocus: true,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.mood, color: Color(0xFFDCE3EF)),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0, left: 10.0),
                    child: Icon(Icons.photo_library, color: Color(0xFFDCE3EF)),
                  ),
                  IconButton(onPressed: func, icon: Icon(Icons.send, color: Color(0xFF36383D))),
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
