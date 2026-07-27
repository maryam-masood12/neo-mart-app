import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
   final IconData icon;
 final  Color color;

  const ProductCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return  Container(
       height: height * 0.12,
       width: width*0.295,
      decoration: BoxDecoration(
   gradient: RadialGradient(
                 center: Alignment(0.0, -0.25),
                 radius: 0,
                 colors: [
                   Color.fromARGB(255, 12, 17, 26),
            Color.fromARGB(255, 17, 24, 39),
            Color.fromARGB(255, 16, 23, 37), 
                  Color.fromARGB(255, 11, 17, 27),
                    ],
                 stops: [0.0, 0.35, 0.75, 1.0],
               ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Color.fromARGB(255, 103, 100, 100).withOpacity(0.6) , width: 0.5),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
        child: Stack(children: [
          Container(
      width: width*0.295,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Color.fromARGB(255, 103, 100, 100).withOpacity(0.2) , width: 0.5),
        // color:  Color.fromARGB(255, 22, 26, 35).withOpacity(0.3),
      ),),

      Positioned(
        top: 10,
        left: width*0.07,
        child: Column(crossAxisAlignment: .center,
          children: [
            Icon(icon  , color: color, size: 37,),
            SizedBox(height: height*0.01,),
            Text(title, style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 10,letterSpacing: 0,fontWeight: FontWeight.w500),),
            
        
        
        ],),
      )
      ]
       ),
      );
  }
}