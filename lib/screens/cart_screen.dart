import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/cart_dialog.dart';
import 'package:flutter_neo_mart/widgets/cart_item_list.dart';


class CartScreen extends StatefulWidget {
  
  const CartScreen({super.key});

   @override
  State<CartScreen> createState() => _CartScreenState();
}

  class _CartScreenState extends State<CartScreen> {

    
  final List<CartItemList> items = [
 
  CartItemList(
    image: "assets/images/headphone5.png",
    name: "Wireless Headphones",
    description: "Pro X1",
    price: "\$189.00",

  ),
  CartItemList(
    image: "assets/images/watch1.png",
    name: "Smart Watch Series 8",
    description: "Pro A1",
   
   price: "\$299.00"
    
    
  ),
  CartItemList(
    image: "assets/images/mouse.png",
    name: "Gaming Mouse",
    description: "X9 Pro",
    price: "\$49.00"
 
   
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
                     
                                Text("My Cart", style: TextStyle(color: Color.fromARGB(255, 181, 234, 241),fontSize: 17.5,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
                                 SizedBox(width: width*0.015,),
                                 Text("(3)", style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225),fontSize: 12,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
                                SizedBox(width: width*0.52,),
                                  Text("Edit ", style: TextStyle(color: Color.fromARGB(255, 126, 219, 232),fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w600),),
                   
                             ],),
                 ),
            
                  SizedBox(height: height*0.017,),
            
                      SizedBox(
                        height: height * 0.4,
                  child: ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, _) =>  SizedBox(height:height*0.01 ),
                    itemBuilder: (context, index) {
            return  Center(
              child: SizedBox(width: width*0.9,
                child: CartCard(item: items[index])
                ),
            );
                    },
                  ),
                ),
            
                Padding(
                   padding:  EdgeInsets.only(top: height*0.04, left: width*0.049),
                   child: Row(children: [
                     
                                Text("Total Amount", style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225),fontSize: 15,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
                                
                                SizedBox(width: width*0.44,),
                                  Text("\$537.00", style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225),fontSize: 15.5,letterSpacing: 0,fontWeight: FontWeight.w700),),
                   
                             ],),
                 ),
            
                   SizedBox(height: height*0.05,),
                     
                 SizedBox(
             width: width * 0.9,
             height: height * 0.067,
             child: ElevatedButton(
               onPressed: () {
                showCartDialog(context);
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor:  Color.fromARGB(255, 142, 221, 247),
                 foregroundColor: Colors.black,
                 elevation: 0,
                 shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
                 ),
               ),
              child: Row(
                    
                    children: [
              
            Expanded(
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 3, 12),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_rounded,
              color: Color.fromARGB(255, 5, 3, 12),
              size: 22,
            ),
                    ],
              ),
             ),
                     ),
                     
            
             ],),
            ),
          ),
       ),

        
    );
  }
}