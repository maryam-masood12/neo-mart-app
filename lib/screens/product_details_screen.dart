import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/product_deatil_card.dart';
import 'package:flutter_neo_mart/widgets/product_detail_card_items.dart';



class ProductDetailScreen extends StatefulWidget {
  
  const ProductDetailScreen({super.key});

   @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

  class _ProductDetailScreenState extends State<ProductDetailScreen>with SingleTickerProviderStateMixin {
     int quantity = 1;
    late AnimationController controller;


    late Animation<double>optacityAnimation;
    late Animation<Offset>slideAnimation;

    @override
  void initState() {
    
    super.initState();

     controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  );

  optacityAnimation = Tween<double>( begin: 0.0, end: 1.0,).animate( CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    ),
  );

   slideAnimation = Tween<Offset>(begin: Offset(-30.0, 0.0),end: Offset(0, 0) ).animate( CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    ),
  );

  controller.forward();


  }

  @override
  void dispose() {
     controller.dispose();
    super.dispose();
  }

  

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
                 Color.fromARGB(255, 1, 6, 12),
                 Color.fromARGB(255, 2, 8, 19), 
                 Color.fromARGB(255, 4, 9, 18),
                    ],
                 stops: [0.0, 0.35, 0.75, 1.0],
               ),
             ),  

             child: Stack(children: [
               Container(
                width: width,
                height: height*0.45,
                decoration:  BoxDecoration(
                  
                 image: DecorationImage(
                   image: AssetImage("assets/images/backo.png"),
                   fit: BoxFit.cover, // ya BoxFit.contain
                 ),
               
                 
                ),  ),
             
                 Positioned(
                  top: height*0.09,
                  left: width*0.29,
                   child: 
                  AnimatedBuilder(
  animation: optacityAnimation,
  child: Container(
    width: width * 0.6,
    height: height * 0.32,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/watch2.png"),
        fit: BoxFit.cover,
      ),
    ),
  ),
  builder: (context, child) {
    return Opacity(
      opacity: optacityAnimation.value,
      child: child,
    );
  },
),
                 ),
             
                 Positioned(
                  top: height*0.02,
                  child:  Row(
                  children: [
                    SizedBox(width: width*0.02,),
                    GestureDetector(
                      onTap: () {
                      Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back , size: 24,  color:  Color.fromARGB(255, 207, 207, 207))),
                      
                     SizedBox(width: width*0.72,),
                    Icon(Icons.favorite_border, size: 22,  color:  Color.fromARGB(255, 207, 207, 207),),
                     SizedBox(width: width*0.04,),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 6),
                       child: Icon(Icons.ios_share_rounded, size: 22,  color:  Color.fromARGB(255, 207, 207, 207,),
                     )),
                  ],
                ),
                      
                 ),
             
                 Positioned(
                  top: height*0.12,
                  left: width*0.03,
                   child: 
                   AnimatedBuilder(animation: slideAnimation,builder: (context, child) => Transform.translate(offset:slideAnimation.value,child: child,),
                     child: Column(
                      children: [
                        Container(
                          width: width*0.17,
                          height: height*0.07,
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
                             border: Border.all(color:  Color.fromARGB(255, 50, 114, 197),width: 1.2),
                             // color:  Color.fromARGB(255, 19, 28, 41),
                           ),
                           child: Stack(children: [
                               Container(
                           width: width*0.17,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color:   Color.fromARGB(255, 55, 91, 139).withOpacity(0.25),width: 1),
                             color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
                           ),),
                                  
                           Positioned(
                                   top: height*0.006,
                                   right: width*0.00002,
                                    child: Image.asset(
                       "assets/images/watch2.png",
                       width: width * 0.2,
                       fit: BoxFit.contain,
                     ),
                                  ),
                           ]),
                        ),
                     
                        SizedBox(height: height*0.007,),
                     
                         Container(
                          width: width*0.17,
                          height: height*0.07,
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
                             border: Border.all(color:  Color.fromARGB(255, 49, 51, 58),width: 1),
                             // color:  Color.fromARGB(255, 19, 28, 41),
                           ),
                           child: Stack(children: [
                               Container(
                           width: width*0.17,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color:   Color.fromARGB(255, 45, 48, 58).withOpacity(0.25),width: 1),
                             color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
                           ),),
                                  
                           Positioned(
                                   top: height*0.006,
                                   left: width*-0.015,
                                    child: Image.asset(
                       "assets/images/watch4.png",
                       width: width * 0.19,
                       fit: BoxFit.contain,
                     ),
                                  ),
                           
                           
                           ]),),
                                  
                          
                     
                           SizedBox(height: height*0.007,),
                            Container(
                          width: width*0.17,
                          height: height*0.07,
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
                             border: Border.all(color:   Color.fromARGB(255, 49, 51, 58),width: 1),
                             // color:  Color.fromARGB(255, 19, 28, 41),
                           ),
                           child: Stack(children: [
                               Container(
                           width: width*0.17,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color:  Color.fromARGB(255, 45, 48, 58).withOpacity(0.25),width: 1),
                             color:  Color.fromARGB(255, 12, 25, 46).withOpacity(0.2),
                           ),),
                                  
                                  Positioned(
                                   top: height*0.006,
                                   left: width*0.02,
                                    child: Image.asset(
                       "assets/images/headphone4.png",
                       width: width * 0.115,
                       fit: BoxFit.contain,
                     ),
                                  ),
                           ]),),
                      ],
                     ),
                   ),
                 ),
             
                   Positioned(
             top: height*0.496,
                         left: width*0.225,
                         child: Container(
                         width: width*0.125,
                         height: height*0.0015,
                         decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 135, 134, 134)
                         ),
                        )),
             
                         Positioned(
             top: height*0.42,
             left: width*0.66,
                         child: 
                         Container(
              width: width*0.32,
              height: height*0.04,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 19, 30, 43),
                 border: Border.all(color: const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
              ),
              child: Row(mainAxisAlignment: .spaceEvenly,
                children: [
                  Container(
                    width: width*0.055,
                    height: height*0.025,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 77, 121, 129),
                      border: Border.all(color: Color.fromARGB(255, 57, 91, 96),width: 0.5)
                    ),
                    
                  ),
                  Container(
                    width: width*0.055,
                    height: height*0.025,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 76, 94, 97),
                    border: Border.all(color: Color.fromARGB(255, 62, 77, 79),width: 0.5)
                    ),
                    
                  ),
                  Container(
                    width: width*0.055,
                    height: height*0.025,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 236, 145, 187),
                      border: Border.all(color:const Color.fromARGB(255, 230, 128, 176) , width: 0.5),)
                    
                  ),
                ],
              ),
              )
              ),
             
             
                        Positioned(
             top: height*0.47,
             left: width*0.72,
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
                                   width: width*0.09,
                                   height: height*0.04,
                                   decoration: BoxDecoration(
                                     color: const Color.fromARGB(255, 19, 30, 43),
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color:const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
                                   ),
                                   child: 
                                   Center(child: Icon(Icons.remove , color: const Color.fromARGB(255, 131, 225, 237),size: 20,)),),
                   ),
                     
             
                     SizedBox(width: width*0.02,),
             
                      Text("$quantity", style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 14,letterSpacing: 0,fontWeight: FontWeight.w700),),
                     SizedBox(width: width*0.030,),
             
             
                      GestureDetector(
                        onTap: (){
                          setState(() {
                             quantity++;
                          });
                        },
                        child: Container(
                                      width: width*0.09,
                                      height: height*0.04,
                                      decoration: BoxDecoration(
                                       color: const Color.fromARGB(255, 19, 30, 43),
                                         borderRadius:BorderRadius.circular(7),
                                         border: Border.all(color:const Color.fromARGB(255, 45, 50, 62).withOpacity(0.5),width: 1),
                                      ),
                                      child: 
                                      Center(child: Icon(Icons.add , color: const Color.fromARGB(255, 131, 225, 237),size: 20,)),),
                      ),
             
                ],
              ),
                         )),
              
             
             
                  Positioned(
                         top: height*0.39,
                         left: width*0.032,
             child: Column(
              crossAxisAlignment: .start,
               children: [
                        SizedBox(height: height*0.02,),
                 Text("Smart Watch Series 8", style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 20,letterSpacing: 0,fontWeight: FontWeight.w600),),
                 SizedBox(height: height*0.0001,),
                //  Text("Seies 8", style: TextStyle(color:  Color.fromARGB(255, 222, 224, 225),fontSize: 18,letterSpacing: 0,fontWeight: FontWeight.w600),),
                //   SizedBox(height: 2,),
                  Row(children: [
                      Icon(Icons.star,color:  Color.fromARGB(255, 216, 180, 70),size: 17,),
                     SizedBox(width: width*0.01,),
                    Text("4.8", style: TextStyle(color:    Color.fromARGB(255, 216, 180, 70),fontSize: 13,letterSpacing: 0,fontWeight: FontWeight.w500),),
                     SizedBox(width: width*0.015,),
                      Text("(128 Reviews)", style: TextStyle(color:Color.fromARGB(255, 196, 193, 193),fontSize: 12.5,letterSpacing: 0,fontWeight: FontWeight.w500),),
                  ],),
                   SizedBox(height: height*0.01,),
                 Row(children: [
                   Text("\$299.00", style: TextStyle(color: Color.fromARGB(255, 222, 224, 225),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                  SizedBox(width: width*0.03,),
                  
                    Text("\$399.00", style: TextStyle(color:   Color.fromARGB(255, 135, 134, 134),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w500),),
                    SizedBox(width: width*0.03,),
             
                    Container(
                      width: width*0.18,
                      height: height*0.03,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 28, 94, 120).withOpacity(0.2),
                        
                      ),
                      child: 
                      Center(child: Text("25% OFF", style: TextStyle(color:  const Color.fromARGB(255, 82, 160, 199),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w700),)) ,
                    )
                       
                 ],),
                     
                     SizedBox(height: height*0.015,),
                  Text("Advanced health sensors, stunning display\n and powerful performance to keep you \nconnected every day.", style: TextStyle(color:  const Color.fromARGB(255, 196, 193, 193),fontSize: 13,letterSpacing: 0,fontWeight: FontWeight.w500),),
                   
                   SizedBox(height: height*0.018,),
                   Row(children: [
              
                 SizedBox(
                         width: width * 0.46,
                         height: height * 0.06,
                         child: ElevatedButton(
               onPressed: () {},
               style: ElevatedButton.styleFrom(
                 backgroundColor:  Color.fromARGB(255, 82, 160, 185),
                 foregroundColor: Colors.black,
                 elevation: 0,
                 shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                 ),
               ),
               child: Row(
                 children: [
                   SizedBox(width: width*0.015,),
                   Icon(Icons.shopping_bag_outlined , color: Color.fromARGB(255, 5, 3, 12), fontWeight: FontWeight.w500,size: 18,), 
                   SizedBox(width: width*0.02,),
                   Text(
                     "Add to Cart",
                     style: TextStyle(
                       color: Color.fromARGB(255, 5, 3, 12),
                       fontSize: 13.5,
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                   
                 ],
               ),
                         ),
                       ),
             
                       SizedBox(width: width*0.03,),
             
                        SizedBox(
                            width: width * 0.46,
                         height: height * 0.06,
                          child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                            color:   Color.fromARGB(255, 86, 164, 203),
                                          ),
                                          foregroundColor:Color.fromARGB(255, 69, 157, 202),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text("Buy Now"),
                                      ),
                        ),
                     
              ],),
              SizedBox(height: height*0.023,),
             
              Container(
                width: width*0.95,
                height: height*0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromARGB(255, 103, 100, 100).withOpacity(0.6) , width: 0.5),
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
                ),
                child: Column(
                  children: [
                     SizedBox(height: height*0.01,),
             
                 Row(children: [
                         SizedBox(width: width*0.032,),
             
             Text("Key Features", style: TextStyle(color:Colors.white,fontSize: 13.5,letterSpacing: 0.5,fontWeight: FontWeight.w600),),
             SizedBox(width: width*0.5,),
               Text("View All ", style: TextStyle(color: Color.fromARGB(255, 106, 226, 242),fontSize: 11.5,letterSpacing: 0,fontWeight: FontWeight.w600),),
              
                       ],),
             
                       SizedBox(height: height*0.015,),
             
                    Row(children: [
                      SizedBox(width: width*0.015,),
                      ProductCard(icon:Icons.monitor_heart, title: "Heart Rate\n Monitoring" ,color: const Color.fromARGB(255, 176, 66, 59),),
                      SizedBox(width: width*0.015,),
                       ProductCard(icon:Icons.battery_charging_full_sharp, title: "Up to 7 Days\nBattery life" ,color: const Color.fromARGB(255, 95, 216, 163),),
                        SizedBox(width: width*0.015,),
                         ProductCard(icon:Icons.bluetooth, title: "Bluetooth 5.3\nConectivity" ,color: const Color.fromARGB(255, 69, 119, 211),),
                        //  SizedBox(width: width*0.015,),
                        //  ProductCard(icon:Icons.bedtime_outlined, title: "Sleep\nTracking" ,color: Colors.red,),
                    ],),
             
                  ],
                ),
              ),
             
               SizedBox(height: height*0.02,),
             
                 Row(children: [
                         SizedBox(width: width*0.032,),
             
             Text("You May Also Like", style: TextStyle(color:Colors.white,fontSize: 13.5,letterSpacing: 0.5,fontWeight: FontWeight.w600),),
             SizedBox(width: width*0.42,),
               Text("View All ", style: TextStyle(color: Color.fromARGB(255, 106, 226, 242),fontSize: 11.5,letterSpacing: 0,fontWeight: FontWeight.w600),),
              
                       ],),
                         SizedBox(height: height*0.02,),
             
                        Row(children: [
                      SizedBox(width: width*0.015,),
                      CardItem(image:"assets/images/headphone4.png",  name: "Apple Watch" ,description:"Ultra2" ,price: "\$799.00",),
                      SizedBox(width: width*0.015,),
                        CardItem(image:"assets/images/headphone4.png",  name: "Apple Watch" ,description:"Ultra2" ,price: "\$799.00",),
                         
                      
                      
                    ],),
                    SizedBox(height: height*0.03,)
                  
               ],
             ),
                        ),
             
             ],),
            
            
            ),
          ),
       ),

       
    );
  }
}