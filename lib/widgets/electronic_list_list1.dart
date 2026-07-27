import 'package:flutter/material.dart';

class ElectronicItem_1 {
  String image;
  String name;
  String description;
  String price;
  String text;
  
  ElectronicItem_1({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.text,
        

  });
}

class ItemCard_1 extends StatefulWidget {
  final ElectronicItem_1 item_1;

  const ItemCard_1({
    super.key,
    required this.item_1,
  });

  @override
  State<ItemCard_1> createState() => _ItemCard_1State();
}

class _ItemCard_1State extends State<ItemCard_1> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final item_1 = widget.item_1;
   

    return Container(
      width: width*0.34,
      decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF101B36), 
        Color(0xFF0C1428), 
        Color(0xFF070B16), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 28, 34, 55),width: 1),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
      child: Stack(children: [
          Container(
      width: width*0.34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 42, 48, 67).withOpacity(0.25),width: 1),
        color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
      ),),

      Positioned(top: height*0.02,
      left: width*0.001,
        child:
       SizedBox(
             width: width*0.3,height: height*0.12,
             child: 
             GestureDetector(
             onTap: () {
  
    Navigator.pushNamed(
      context,
      "/productDetail",
    );
  
},
     child: Image.asset(item_1.image ,fit: BoxFit.contain,))), 
             ),

      Positioned(
          top: height*0.01,
          right: width*0.02,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
            child: Icon(
              isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: isFavourite
                  ?  Color.fromARGB(255, 95, 227, 245)
                  : Colors.white,
              size: 21,
            ),
          ),
        ),

      Positioned(
            top: height*0.14,
            left: width*0.02,
             child: Column(
              crossAxisAlignment: .start,
               children: [
           SizedBox(height: 3,),
                 Text(item_1.name, style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 13,letterSpacing: 0,fontWeight: FontWeight.w500),),
                 SizedBox(height: height*0.0009,),
                 Text(item_1.description, style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225),fontSize: 12,letterSpacing: 0,fontWeight: FontWeight.w500),),
                  SizedBox(height: 2,),
                 Row(children: [
                   Text(item_1.price, style: TextStyle(color: Color.fromARGB(255, 143, 227, 238),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w600),),
                  SizedBox(width: width*0.075,),
                    Icon(Icons.star,color: Colors.amber,size: 13,),
                     SizedBox(width: width*0.01,),
                    Text(item_1.text, style: TextStyle(color:  const Color.fromARGB(255, 196, 193, 193),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w500),),
                        
                        
                  
                 ],),
                  
               ],
             ),
           ),

          
      ],),

    

    );
    

  }
}
