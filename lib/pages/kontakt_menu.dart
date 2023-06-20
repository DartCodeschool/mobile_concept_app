import 'package:flutter/material.dart';
import 'package:mobile_concept_app/modul/map.dart';
import 'package:mobile_concept_app/modul/classes.dart';
import 'package:mobile_concept_app/pages/kontakt_information.dart';

class KollektionKontakte extends StatelessWidget {
  const KollektionKontakte({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: const [
              Icon(Icons.menu),
              SizedBox(width: 120.0),
              Text('Kontakte', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000))),
            ],
          ),
        ),
        const SizedBox(height: 15.0),

        // started searching for contacts

        Container(
          height: 49.0,
          width: 344.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color(0xFFE7ECF6)),
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

        // searching for contacts is over

        const Expanded(child: KontaktSeperator()),
      ],
    );
  }
}

class KontaktSeperator extends StatelessWidget {
  const KontaktSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    void nextProfile(BuildContext context, KontaktInformation profil) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return profil;
      }));
    }

    List info = [];

    kontakts.forEach((key, value) {
      info.add(KontaktInformation(text: value["title"], photo: value["image"]));
    });

    List<person> kontakt = [];
    kontakts.forEach((key, value) {
      kontakt.add(person(title: value["title"], image: value["image"]));
    });
    return ListView.builder(
        itemCount: kontakt.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => nextProfile(context, info[index]),
            leading: Image.asset(kontakt[index].image, height: 60, fit: BoxFit.fill),
            title: Text(kontakt[index].title, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
            subtitle: const Text('123 456 789', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
            trailing: Container(
              width: 80,
              child: Row(
                children: [
                  const Icon(Icons.call, color: Color(0xFFABB2C0)),
                  const SizedBox(width: 15.0),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 2.0, right: 2.0),
                        child: Icon(Icons.chat_bubble, color: Color(0xFFABB2C0)),
                      ),
                      Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
