import 'package:flutter/material.dart';

import '../navigation/navigation_button.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFF5F7FB),
        centerTitle: true,
        title: const Text('Kontakte', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000))),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/icon/Vector.png')),
        actions: const [Padding(padding: EdgeInsets.only(right: 10.0), child: Icon(Icons.more_vert, color: Color(0xFF000000)))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 90),
                  height: 309,
                  width: 337,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: const [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black12,
                      spreadRadius: 1,
                    ),
                  ]),
                  child: Column(
                    children: [
                      Text(argument["title"], style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                      const Text('Hier steht mein Status.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                      const SizedBox(height: 18.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.call, color: Color(0xFF36383D)),
                          SizedBox(width: 8.0),
                          Text('123 456 789', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.mail, color: Color(0xFF36383D)),
                          SizedBox(width: 8.0),
                          Text('senna@mail.ls', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140, 37)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), onPressed: () {}, child: const Text('Anrufen', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white))),
                          const SizedBox(width: 10),
                          ElevatedButton(style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140, 37)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), onPressed: () {}, child: const Text('Nachricht', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(top: -90, left: 0, right: 0, child: Image.asset(argument['image'], height: 183, fit: BoxFit.contain)),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const NavigationNextPage(),
    );
  }
}
