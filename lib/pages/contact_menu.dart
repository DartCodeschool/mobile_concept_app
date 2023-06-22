import 'package:flutter/material.dart';
import 'package:mobile_concept_app/moduls/map.dart';
import '../navigation/navigation_button.dart';

class ContactMenu extends StatelessWidget {
  const ContactMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationNextPage(),
      drawer: const Drawer(),
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: const Color(0xFFF5F7FB),
        centerTitle: true,
        title: const Text(
          'Kontakte',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 25.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: 49,
              width: 344,
              decoration: BoxDecoration(
                color: const Color(0xFFE7ECF6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  iconColor: Color(0xFFAEB5C5),
                  border: InputBorder.none,
                  hintText: 'Suche nach Kontakt',
                  hintStyle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700, color: Color(0xFFAEB5C5)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: kontakts.length,
                itemBuilder: (context, index) {
                  final contact = kontakts[index];
                  return ListTile(
                      leading: Image.asset(contact["image"]),
                      title: Text(contact["title"], style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                      subtitle: const Text('123 456 789', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.call, color: Color(0xFFABB2C0)),
                          const SizedBox(width: 10.0),
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              const Icon(Icons.chat_bubble, color: Color(0xFFABB2C0)),
                              Positioned(top: -2, child: Container(height: 9, width: 9, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(50)))),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/contact-information', arguments: contact);
                      });
                }),
          ),
        ],
      ),
    );
  }
}
