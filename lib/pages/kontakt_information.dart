import 'package:flutter/material.dart';

class KontaktInformation extends StatelessWidget {
  final String text;
  final String photo;
  const KontaktInformation({
    super.key,
    required this.text,
    required this.photo,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),

      // appbar part started

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFE5E5E5),
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        centerTitle: true,
        title: const Text('Kontakte', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF000000))),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert, color: Color(0xFF000000)),
          ),
        ],
      ),

      //  the appbar part is over

      // body part started

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(height: 309.0, width: 337.0, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: const [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 6)])),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(photo, height: 183, fit: BoxFit.fill),
                    Text(text, style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D))),
                    const Text('Hier steht mein Status.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7))),
                    const SizedBox(height: 20.0),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.call, color: Color(0xFF36383D)),
                            SizedBox(width: 10.0),
                            Text('123 456 789', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.mail, color: Color(0xFF36383D)),
                            SizedBox(width: 10.0),
                            Text('senna@mail.ls', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D))),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 33.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {}, style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140.0, 37.0)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), child: const Text('Anrufen', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600))),
                        const SizedBox(width: 10.0),
                        ElevatedButton(onPressed: () {}, style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(140.0, 37.0)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))), child: const Text('Anrufen', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      //  the body part is over
    );
  }
}
