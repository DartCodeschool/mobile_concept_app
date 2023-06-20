import 'package:flutter/material.dart';
import 'package:mobile_concept_app/modul/classes.dart';
import 'package:mobile_concept_app/modul/map.dart';
import 'package:mobile_concept_app/pages/chat_menu.dart';

class KonversationPage extends StatelessWidget {
  const KonversationPage({super.key});

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
              Text('Konversationen', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000))),
            ],
          ),
        ),
        const SizedBox(height: 15.0),

        // starting search for contact
        Container(
          height: 49.0,
          width: 344.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xFFE7ECF6)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
                decoration: InputDecoration(
              icon: Icon(Icons.search, color: Color(0xFFAEB5C5)),
              hintText: 'Suche nach Kontakt',
              hintStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700, color: Color(0xFFAEB5C5)),
              border: InputBorder.none,
            )),
          ),
        ),
        //searching for contact is over

        const Expanded(child: ChatSeparator()),
      ],
    );
  }
}

class ChatSeparator extends StatelessWidget {
  const ChatSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    void NextPage(BuildContext context, ChatMenu chat) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return chat;
      }));
    }

    List full = [];
    kontakts.forEach(
      (key, value) {
        full.add(ChatMenu(title: value["title"], avatar: value["image"]));
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
            onTap: () => NextPage(context, full[index]),
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
                  Text(database[index].time, style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                  Icon(check[index], color: const Color(0xFF36383D)),
                ],
              ),
            ),
          );
        });
  }
}
