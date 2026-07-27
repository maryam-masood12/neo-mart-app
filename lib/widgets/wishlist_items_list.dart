import 'package:flutter/material.dart';

class WishListItem {
  String image;
  String name;
  String description;
  String price;
 
  
  WishListItem({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
   
        

  });
}

class WishListCard extends StatefulWidget {
  final WishListItem item;

  const WishListCard({
    super.key,
    required this.item,
  });

  @override
  State<WishListCard> createState() => _WishListCardState();
}

class _WishListCardState extends State<WishListCard> {

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final item = widget.item;
   

    return Container(
       height: height * 0.127,
      decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 20, 27, 44), 
        Color.fromARGB(255, 26, 36, 56), 
        Color.fromARGB(255, 20, 25, 41), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 30, 37, 63),width: 1),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
      child: Stack(children: [
          Container(
      width: width*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 38, 43, 62).withOpacity(0.25),width: 1),
        color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
      ),),

      Positioned(
         top: height*0.007,
      left: width*0.025,
        child: Container(
          width: width*0.25,
       height: height * 0.11,
      decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 23, 32, 55), 
        Color.fromARGB(255, 17, 24, 41), 
        Color.fromARGB(255, 28, 36, 57),
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 20, 24, 46),width: 0.2),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
        )),

      Positioned(
        top: height*0.008,
      left: width*0.05,
        child:
       SizedBox(
             width: width*0.2,height: height*0.11,
             child: Image.asset(item.image ,fit: BoxFit.contain,)), 
             ),

      Positioned(
            top: height*0.02,
            left: width*0.35,
             child: Column(
              crossAxisAlignment: .start,
               children: [
           SizedBox(height: 3,),
                 Text(item.name, style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w700),),
                 SizedBox(height: height*0.0009,),
                 Text(item.description, style: TextStyle(color:  Color.fromARGB(255, 183, 185, 186),fontSize: 12.2,letterSpacing: 0,fontWeight: FontWeight.w500),),
                  SizedBox(height: height*0.01,),
                 Text(item.price, style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 13,letterSpacing: 0,fontWeight: FontWeight.w800),),

               ],
             ),
           ),

           Positioned(
            top: height*0.05,
             left: width*0.78,
            child: Icon(Icons.favorite,color:  Color.fromARGB(255, 158, 229, 239),size: 29,),)

          
      ],),

    

    );
    

  }
}
