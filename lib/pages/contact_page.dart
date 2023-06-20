import 'package:flutter/material.dart';
import 'package:mobile_concept_app/modul/routes.dart';

import '../modul/map.dart';
import '../widgets/custom_navigation_bar.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text(
          'Contact',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: kontakts.length,
              itemBuilder: (context, index) {
                final kontak = kontakts[index];
                return ListTile(
                  leading: Image.asset(kontak['image'], fit: BoxFit.fitWidth),
                  title: Text(kontak['title']),
                  subtitle: const Text('1234 12341'),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.call), SizedBox(width: 10), Icon(Icons.message)],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/contact-block', arguments: kontak);
                  },
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
