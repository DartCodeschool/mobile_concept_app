import 'package:flutter/material.dart';
import 'package:mobile_concept_app/class/classes.dart';
import 'package:mobile_concept_app/class/map.dart';
import 'package:mobile_concept_app/pages/chat_menu.dart';

class konversationen_page extends StatelessWidget {
  const konversationen_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 46.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Icon(Icons.menu),
              SizedBox(width: 91.0),
              Text(
                'Konversationen',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: 349,
          height: 49,
          decoration: BoxDecoration(color: const Color(0xFFE7ECF6), borderRadius: BorderRadius.circular(30)),
          child: const Row(
            children: [
              SizedBox(width: 20.0),
              Icon(Icons.search, color: Color(0xFFAEB5C5)),
              SizedBox(width: 12.0),
              Text('Suche nach Kontakt', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFFAEB5C5))),
            ],
          ),
        ),
        const Expanded(
          child: chat_seperator(),
        ),
      ],
    );
  }
}

class chat_seperator extends StatelessWidget {
  const chat_seperator({super.key});

  @override
  Widget build(BuildContext context) {
    void next_page(BuildContext context, Chat_menu chat) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return chat;
      }));
    }

    List full = [];
    kontakts.forEach(
      (key, value) {
        full.add(Chat_menu(title: value["title"], avatar: value["image"]));
      },
    );

    List database = [];

    kontakts.forEach((key, value) {
      database.add(chats(
        image: value["image"],
        subtitle: value["subtitle"],
        time: value["time"],
        title: value["title"],
      ));
    });

    return ListView.builder(
        itemCount: database.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => next_page(context, full[index]),
            leading: Image.asset(
              database[index].image,
              height: 60,
              fit: BoxFit.fill,
            ),
            title: Text(
              database[index].title,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D)),
            ),
            subtitle: Text(
              database[index].subtitle,
              style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),
            ),
            trailing: Container(
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    database[index].time,
                    style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),
                  ),
                  Icon(
                    check[index],
                    color: const Color(0xFF36383D),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
