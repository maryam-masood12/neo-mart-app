import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String text;
  final String title;

  const ProfileCard({
    super.key,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return  Container(
       height: height * 0.1,
       width: width*0.227,
      decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
         Color.fromARGB(255, 20, 24, 37), 
        Color.fromARGB(255, 20, 29, 45), 
        Color.fromARGB(255, 20, 24, 37), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 27, 30, 40),width: 0.5),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
        child: Stack(children: [
          Container(
      width: width*0.227,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 38, 43, 62).withOpacity(0.25),width: 1),
        color:  Color.fromARGB(255, 22, 26, 35).withOpacity(0.3),
      ),),

      Positioned(
        top: 14,
        left: 14,
        child: Column(crossAxisAlignment: .center,
          children: [
            Text(title, style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 15,letterSpacing: 0,fontWeight: FontWeight.w700),),
              Text(text, style: TextStyle(color:  Color.fromARGB(255, 158, 229, 239),fontSize: 20,letterSpacing: 0,fontWeight: FontWeight.w700),),
        
        
        ],),
      )
      ]
       ),
      );
  }
}