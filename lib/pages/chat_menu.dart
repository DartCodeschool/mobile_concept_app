import 'package:flutter/material.dart';
import 'package:mobile_concept_app/pages/konversationen.dart';

class Chat_menu extends StatelessWidget {

  final String title;
  final String avatar;
  const Chat_menu({
    required this.title,
    required this.avatar,
  });

  Widget firstperson () {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset('images/lexsi.png', height: 45, fit: BoxFit.fill,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xFFE2E9F6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: const [
                    Text('Ja mega gut. Danke dir.', style: TextStyle(fontSize: 14.4, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                    Icon(Icons.done_all),
                  ],
                ),
              ),
              const SizedBox(height: 5.0,),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xFFE2E9F6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: const [
                    Text('Alles klar!', style: TextStyle(fontSize: 14.4, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                    Icon(Icons.done_all),
                  ],
                ),
              ),
              const Text('13:37 Uhr',style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),),
            ],
          ),
        ],
      ),
    );
  }

  Widget secondperson () {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFDBFDD9),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
                child: Row(
                  children: const [
                    Icon(Icons.done_all),
                    Text('Dann machen wir das so.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                  ],
                ),
              ),
              const SizedBox(height: 6.0,),
              const Text('13:37 Uhr',style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),),
              
            ],
          ),
          const  SizedBox(height: 5.0,),
          Image.asset(this.avatar, height: 45, fit: BoxFit.fill,),
        ],
      ),
    );
  }

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
              Image.asset(this.avatar),
              const  SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D)),),
                  const  Text('mein Status steht hier.',style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),),
                ],
              ),
            ],
          ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const  SizedBox(height: 25.0,),
          firstperson(),
          secondperson(),
          firstperson(),
          secondperson(),
          firstperson(),
          secondperson(),
          const SizedBox(height: 70.0),
          Container(height: 75.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Schreibe etwas', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                  Row(
                    children: const [
                      Icon(Icons.sentiment_satisfied, color: Color(0xFFDCE3EF),),
                      SizedBox(width: 10.0,),
                      Icon(Icons.photo_library, color: Color(0xFFDCE3EF),),
                      SizedBox(width: 25.0,),
                      Icon(Icons.send, color: Color(0xFF36383D),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

