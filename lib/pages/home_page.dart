import 'package:flutter/material.dart';

class Profile_menu extends StatelessWidget {
  const Profile_menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const  SizedBox(height: 46.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back),
                  Text('kontakte',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            const SizedBox(height: 180.0),
            Container(
               height: 347,
               width: 329,
               child: Card(
                elevation: 7,
                  shadowColor: Colors.black,
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20),
                  ),
                 ),
              ),
           ],
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: 150,
          child: Column(
            children: [
              Image.asset('images/senna_big.png'),
              const Text('Ricardo Senna',style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Color(0xFF36383D)),),
              const  Text('Hier steht mein Status.', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B7)),),
              const  SizedBox(height: 20.0,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.call,color: Color(0xFF36383D),),
                      SizedBox(width: 10.0,),
                      Text('123 456 789', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.mail,color: Color(0xFF36383D),),
                      SizedBox(width: 10.0,),
                      Text('senna@mail.ls', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF36383D)),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 33.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(  
                      minimumSize: const MaterialStatePropertyAll(Size(140.0, 37.0)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    ),
                    child: const Text('Anrufen',style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),)),
                    const SizedBox(width: 10.0,),
                    ElevatedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(  
                      minimumSize: const MaterialStatePropertyAll(Size(140.0, 37.0)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    ),
                    child: const Text('Anrufen',style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}