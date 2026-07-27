import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomBar({super.key , required this.currentIndex , required this.onTap});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height*0.07,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 3, 4, 14),
      ),
      child: 
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          
          children: [
        
            GestureDetector(
              onTap: () {
 widget. onTap(0);
},
              child: Column(
                children: [
                  Icon(Icons.home,
                  color:  widget.currentIndex == 0 ? Color.fromARGB(255, 151, 229, 254):  Color.fromARGB(255, 153, 155, 155),
                  size: 25, ),
                  Text("Home", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,
                   color: widget.currentIndex == 0 ?  Color.fromARGB(255, 151, 229, 254) :  Color.fromARGB(255, 153, 155, 155),
                  letterSpacing: 1),)
                ],
              ),
            ),
             GestureDetector(
               onTap: () {
 widget. onTap(1);
},
        
               child: Column(
                 children: [
                   Icon(Icons.favorite_border,
                   color: widget.currentIndex == 1 ?  Color.fromARGB(255, 151, 229, 254) : Color.fromARGB(255, 153, 155, 155),
                   size: 25, ),
                    Text("Wishlist", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,
                     color: widget.currentIndex == 1 ? Color.fromARGB(255, 151, 229, 254) :  Color.fromARGB(255, 153, 155, 155),
                    letterSpacing: 1),)
                 ],
               ),
             ),
               GestureDetector(
                onTap: () {
 widget. onTap(2);
},
                 child: Column(
                   children: [
                     Stack(
                      clipBehavior: Clip.none,
                       children:[ Icon(Icons.shopping_cart_outlined,
                        color: widget.currentIndex == 2 ? Color.fromARGB(255, 151, 229, 254) : Color.fromARGB(255, 153, 155, 155),
                       size: 25, ),

                       Positioned(
                      right: -3,
                      top: -3,
                      child: Container(
                      width: 14,
                      height: 14,
                           decoration: const BoxDecoration(
                         color: Color.fromARGB(255, 151, 229, 254),
                           shape: BoxShape.circle,
                                  ),
                        child: const Center(
                         child: Text(
                           "3",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                             fontSize: 10,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                           ),
                         ),
                         ),
                   ]),
                      Text("Cart", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,
                      color: widget.currentIndex == 2 ? Color.fromARGB(255, 151, 229, 254) : Color.fromARGB(255, 153, 155, 155),
                      letterSpacing: 1),)
                   ],
                 ),
               ),
               GestureDetector(
                onTap: () {
 widget. onTap(3);
},
                 child: Column(
                   children: [
                     Icon(Icons.person_2_outlined,
                      color: widget.currentIndex == 3 ? Color.fromARGB(255, 151, 229, 254) : Color.fromARGB(255, 153, 155, 155),
                     size: 25, ),
                      Text("Profile", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,
                       color: widget.currentIndex == 3 ?  Color.fromARGB(255, 151, 229, 254):  Color.fromARGB(255, 153, 155, 155),
                      letterSpacing: 1),)
                   ],
                 ),
               ),
        
        
          ],
        ),
      ),
     
    );
  }
}