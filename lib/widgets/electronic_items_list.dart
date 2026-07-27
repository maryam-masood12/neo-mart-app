import 'package:flutter/material.dart';

class ElectronicItem {
  String image;
  String name;
 
  ElectronicItem({
    required this.image,
    required this.name,
    
  });
}

class ItemCard extends StatefulWidget {
  final ElectronicItem item;

  const ItemCard({
    super.key,
    required this.item,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final item = widget.item;

    return Container(
      width: width*0.27,
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

      child: Stack(
        children: [

          ClipRRect(
            child: SizedBox(
              width: width*0.27,
              height: height*9,
              child:  
              Opacity(
                opacity: 0.015,
                child: Image.asset(
                   "assets/images/smoke.png",
                   fit: BoxFit.fill,
                 ),
              ),
            ),
          ),

          Container(
      width: width*0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 42, 48, 67).withOpacity(0.25),width: 1),
        color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
      ),),

          Positioned(
            top: height*0.007,
            
            left: width*0.035,
            right:width*0.035,
            child: 
            Column(
              children: [
                SizedBox(

                   width: width*0.188,height: height*0.1,
                  child: Image.asset(item.image ,fit: BoxFit.contain,)),

                  Text(item.name , style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225) , fontSize: 10.8 , fontWeight: FontWeight.w700),)
              ],
            )),

           
        ],
      ),


    );
    

  }
}
