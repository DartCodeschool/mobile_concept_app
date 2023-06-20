import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_concept_app/widgets/custom_navigation_bar.dart';

class ContactBlockPage extends StatelessWidget {
  const ContactBlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        // iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/Vector.svg', width: 25),
        ),
        title: const Text('Contact', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 330,
              height: 300,
              // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3)),
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(args['title'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text(args['subtitle'], style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.call), SizedBox(width: 10), Text('1234 1234')],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.mail), SizedBox(width: 10), Text('senna@mail.ls')],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/conversation', arguments: args);
                        },
                        child: const Text('Call'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/conversation', arguments: args);
                        },
                        child: const Text('Message'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -160,
              left: 0,
              right: 0,
              child: Image.asset(args['image'], scale: 0.4),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
