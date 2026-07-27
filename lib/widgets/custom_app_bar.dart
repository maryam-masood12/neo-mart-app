import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});


  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;
  
    return Container(
             width: width,
            height: height * 0.08,
              decoration: BoxDecoration(
                     gradient: RadialGradient(
                center: Alignment(0.0, -0.25),
                radius: 0,
                colors: [
                  Color.fromARGB(255, 7, 23, 41),
                  Color.fromARGB(255, 2, 8, 14),
                  Color.fromARGB(255, 2, 10, 21), 
                  Color.fromARGB(255, 2, 9, 20),
                ],
                stops: [0.0, 0.35, 0.75, 1.0],
              ),
              ),
              
              child: Row(
                children: [
                  SizedBox(width: width*0.05,),
                  GestureDetector (
                    onTap: () {
                     Scaffold.of(context).openDrawer(); 
                  },
                    child: Icon(Icons.menu_rounded , color: Color.fromARGB(255, 203, 205, 206),size: 28,)),
                    SizedBox(width: width*0.09,),
                   Text("NEO",style: GoogleFonts.spaceGrotesk(fontSize: 21,letterSpacing: 1,fontWeight: FontWeight.w400,
                        color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width*0.005,),
        
                   Text("MART",style: GoogleFonts.sora(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w400,
                      color  :Color.fromARGB(255, 95, 227, 245)
                    ),
                  ),
                                      
                                    SizedBox(width: width*0.26,),
                                       Icon(Icons.search_rounded,color:  Color.fromARGB(255, 203, 205, 206),size: 25,),
                  SizedBox(width: 10,),
                  Stack(
                     clipBehavior: Clip.none,
                    children: [
                      Icon(Icons.shopping_cart_outlined,color:  Color.fromARGB(255, 203, 205, 206),size: 25,),

                      Positioned(
                      top: -4,
                      right: -3.5,
                        child: Container(
                           width: width * 0.040,
                          height: height * 0.018,
                          decoration: BoxDecoration(
                          color  : Color.fromARGB(255, 121, 212, 243),
                             borderRadius: BorderRadius.circular(10),
                             
                          ),
                          child: 
                          Center(child: Text("3" ,  style: TextStyle(color: const Color.fromARGB(255, 2, 2, 8) , fontSize: 10 , fontWeight: FontWeight.bold)  ,  )),
                        ),
                      )
                    ],
                  ),

                  

                   

                  
                ],
              ),

             

    );
   
  }}