import 'package:flutter/material.dart';
import 'package:mobile_concept_app/class/map.dart';
import 'package:mobile_concept_app/class/classes.dart';

class collaction_kontakte extends StatelessWidget {
  const collaction_kontakte({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(height: 50.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: const [
              Icon(Icons.menu),
              SizedBox(width: 120.0,),
              Text('Kontakte', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000))),
            ],
          ),
        ),
        const  SizedBox(height: 15.0,),
        Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 349,
              height: 49,
              decoration: BoxDecoration(
                color:const Color(0xFFE7ECF6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20.0,),
                  Icon(Icons.search, color: Color(0xFFAEB5C5),),
                  SizedBox(width: 12.0,),
                  Text('Suche nach Kontakt', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFFAEB5C5)),),
                ],
              ),
            ),
          const  SizedBox(height: 610, child: 
            Kontakt_seprator(),  
        ),
      ],
    );
  }
}

class Kontakt_seprator extends StatelessWidget {
  const Kontakt_seprator({super.key});

  @override
  Widget build(BuildContext context) {

    List <person> kontakt = [];
    kontakts.forEach((key, value) { 
      kontakt.add(person(
        title: value["title"], 
        image: value["image"]));
    });
       return ListView.builder(
        itemCount: kontakt.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Image.asset(kontakt[index].image, height: 60, fit: BoxFit.fill,),
            title: Text(kontakt[index].title, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D)),),
            subtitle: const Text('123 456 789', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),),
            trailing: Container(
              width: 80,
              child: Row(
                children: const [
                  Icon(Icons.call, color: Color(0xFFABB2C0),),
                  SizedBox(width: 15.0,),
                  Icon(Icons.chat_bubble, color: Color(0xFFABB2C0),),
                ],
              ),
            ),
          );
        });
  }
}