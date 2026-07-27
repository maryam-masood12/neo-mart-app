import 'package:flutter/material.dart';

class CartItemList {
  String image;
  String name;
  String description;
  String price;
 
  
  CartItemList({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
   
        

  });
}

class CartCard extends StatefulWidget {
  final CartItemList item;

  const CartCard({
    super.key,
    required this.item,
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int quantity = 1;

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
       Color.fromARGB(255, 23, 27, 38), 
        Color.fromARGB(255, 14, 21, 36), 
       Color.fromARGB(255, 22, 26, 37), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 29, 32, 43),width: 1),
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
        Color.fromARGB(255, 13, 19, 33), 
        Color.fromARGB(255, 21, 29, 49), 
       Color.fromARGB(255, 13, 18, 31), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 23, 27, 43),width: 0.3),
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
            left: width*0.31,
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
             top: height*0.07,
             left: width*0.48,
            child: 
            Container(
              width: width*0.26,
              height: height*0.04,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
              ),
              child: Row(
                children: [
                   GestureDetector(
                    onTap: () {
                      setState(() {
                           if (quantity > 1) {
                          quantity--;
                            }
                      });
                    },
                     child: Container(
                                   width: width*0.08,
                                   height: height*0.04,
                                   decoration: BoxDecoration(
                                     color: const Color.fromARGB(255, 23, 36, 51),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
                                      border: Border.all(color:const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
                                   ),
                                   child: 
                                   Center(child: Icon(Icons.remove , color: const Color.fromARGB(255, 131, 225, 237),size: 20,)),),
                   ),
                     

                     SizedBox(width: width*0.03,),

                      Text("$quantity", style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w700),),
                     SizedBox(width: width*0.041,),


                      GestureDetector(
                        onTap: (){
                          setState(() {
                             quantity++;
                          });
                        },
                        child: Container(
                                      width: width*0.08,
                                      height: height*0.04,
                                      decoration: BoxDecoration(
                                       color: const Color.fromARGB(255, 23, 36, 51),
                                         borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
                                         border: Border.all(color:const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
                                      ),
                                      child: 
                                      Center(child: Icon(Icons.add , color: const Color.fromARGB(255, 131, 225, 237),size: 20,)),),
                      ),

                ],
              ),
            )),

            

           Positioned(
            top: height*0.013,
             left: width*0.78,
            child: Container(
              width: width*0.005,
              height: height*0.095,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 32, 35, 45)
              )

            )),

           Positioned(
            top: height*0.046,
             left: width*0.8,
            child: Icon(Icons.delete_outlined,color:  Color.fromARGB(255, 197, 231, 235),size: 25,),)

            

          
      ],),

    

    );
    

  }
}
