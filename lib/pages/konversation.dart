import 'package:flutter/material.dart';
import 'package:mobile_concept_app/moduls/map.dart';
import '../navigation/navigation_button.dart';

class Konversation extends StatelessWidget {
  const Konversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: const Color(0xFFF5F7FB),
        title: const Text(
          'Konversationen',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
        ),
      ),
      body: Column(
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
                    final contactInfo = kontakts[index];
                    return ListTile(
                      leading: Image.asset(contactInfo["image"]),
                      title: Text(contactInfo["title"], style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                      subtitle: Text(contactInfo["subtitle"], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(contactInfo["time"], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                          Icon(check[index], color: const Color(0xFF36383D)),
                        ],
                      ),
                      onTap: () => Navigator.pushNamed(context, '/chat-konversation', arguments: contactInfo),
                    );
                  }))
        ],
      ),
      bottomNavigationBar: const NavigationNextPage(),
    );
  }
}
