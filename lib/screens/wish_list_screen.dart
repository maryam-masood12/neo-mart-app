import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/wishlist_items_list.dart';

class WishListScreen extends StatefulWidget {
  
  const WishListScreen({super.key});

   @override
  State<WishListScreen> createState() => _WishListScreenState();
}

  class _WishListScreenState extends State<WishListScreen> {

    
  final List<WishListItem> items = [
 
  WishListItem(
    image: "assets/images/headphone5.png",
    name: "Sony WH-100XM5 ",
    description: "Headphones",
    price: "\$189.00",

  ),
  WishListItem(
    image: "assets/images/camera2.png",
    name: "Canon EOS 90D",
    description: "Camera",
   
   price: "\$799.00"
    
    
  ),
  WishListItem(
    image: "assets/images/drown1.png",
    name: "DJI Mini 3 Pro",
    description: "Drone",
    price: "\$759.00"
 
   
  ),

  WishListItem(
    image: "assets/images/laptop1.png",
    name: "MacBook Air M2",
   
    description: "Laptop",
   price: "\$1199.00"
   
  ),

];

  @override
  Widget build(BuildContext context) {

     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
       SafeArea(
         child:
          SingleChildScrollView(
            child: Container(
             width: width,
             height: height,
            
              decoration:  BoxDecoration(
               gradient: RadialGradient(
                 center: Alignment(0.0, -0.25),
                 radius: 0,
                 colors: [
                   Color.fromARGB(255, 7, 23, 41),
                   Color.fromARGB(255, 4, 15, 26),
                   Color.fromARGB(255, 3, 13, 28), 
                   Color.fromARGB(255, 4, 13, 28),
                 ],
                 stops: [0.0, 0.35, 0.75, 1.0],
               ),
             ),  
             child: Column(children: [
            
                 Padding(
                   padding:  EdgeInsets.only(top: height*0.04, left: width*0.049),
                   child: Row(children: [
                     
                                Text("My Wishlist", style: TextStyle(color: Color.fromARGB(255, 146, 223, 233),fontSize: 17.5,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
                                SizedBox(width: width*0.52,),
                                  Text("Edit ", style: TextStyle(color: Color.fromARGB(255, 146, 223, 233),fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600),),
                   
                             ],),
                 ),
            
                  SizedBox(height: height*0.017,),
            
                      SizedBox(
                        height: height * 0.8,
                  child: ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, _) =>  SizedBox(height:height*0.01 ),
                    itemBuilder: (context, index) {
            return  Center(
              child: SizedBox(width: width*0.9,
                child: WishListCard(item: items[index])
                ),
            );
                    },
                  ),
                ),
            
             ],),
            ),
          ),
       ),

         
    );
  }
}