import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/profile_card.dart';

class ProfileScreen extends StatefulWidget {
  
  const ProfileScreen({super.key});

   @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

  class _ProfileScreenState extends State<ProfileScreen> {


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
                    Color.fromARGB(255, 2, 8, 14),
                    Color.fromARGB(255, 2, 10, 21), 
                    Color.fromARGB(255, 2, 9, 20),
                    ],
                 stops: [0.0, 0.35, 0.75, 1.0],
               ),
             ),  
             child: Column(
              children: [
                Stack(
                  children: [
            
                    Padding(
                      padding:  EdgeInsets.only(top: height*0.025 , left: width*0.04),
                      child: Row(children: [
                        
                                  Icon(Icons.settings_outlined , color: Color.fromARGB(255, 203, 205, 206),size: 28,),
                                    SizedBox(width: width*0.78,),
                                   Icon(Icons.notifications_none_sharp , color: Color.fromARGB(255, 203, 205, 206),size: 28,),
                                ],),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(top : height*0.05 , left: width*0.38),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/images/pic.png"),
                      ),
                    ),

         Positioned(
      right: width*0.38,
      top: height*0.131,
      child: Container(
        width: 23,
        height: 23,
        decoration: BoxDecoration(
          color:  Color.fromARGB(255, 158, 229, 239),
          shape: BoxShape.circle,
         
        ),
        child: Icon(
          Icons.check,
          color: const Color.fromARGB(255, 3, 1, 12),
          size: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
            
                  ],
                ),
                SizedBox(height: height*0.012,),
                 
                  Text("Maryam Masood", style: TextStyle(color: Color.fromARGB(255, 243, 244, 245),fontSize: 15,letterSpacing: 0,fontWeight: FontWeight.w800),),

                    Text("maryammasood211@gmail.com", style: TextStyle(color: Color.fromARGB(255, 158, 159, 159),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w700),),
                    

                    SizedBox(height: height*0.02,),

                    Row(children: [
                      SizedBox(width: width*0.015,),
                      ProfileCard(text: "12", title: "Orders"),
                      SizedBox(width: width*0.015,),
                       ProfileCard(text: "08", title: "Wishlist"),
                        SizedBox(width: width*0.015,),
                        ProfileCard(text: "05", title: "Reviews"),
                         SizedBox(width: width*0.015,),
                         ProfileCard(text: "340", title: "Points"),
                    ],),

                     SizedBox(height: height*0.02,),

                       Container(
       height: height * 0.33,
       width: width*0.95,
      decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
         Color.fromARGB(255, 20, 24, 37), 
        Color.fromARGB(255, 20, 29, 45), 
        Color.fromARGB(255, 20, 24, 37), 
      ],
    ),
  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 27, 30, 40),width: 0.5),
        // color:  Color.fromARGB(255, 19, 28, 41),
      ),
        child: Stack(children: [
          Container(
      width: width*0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 38, 43, 62).withOpacity(0.25),width: 1),
        color:  Color.fromARGB(255, 22, 26, 35).withOpacity(0.3),
      ),),
        
        Padding(
          padding: const EdgeInsets.only(top: 10 , left: 7),
          child: Column(
            children: [
              Row(children: [
                 Icon(Icons.shopping_bag_outlined,color:  Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("My Orders", style: TextStyle(color:    Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.51,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

              Padding(
                padding:  EdgeInsets.only(top:height*0.01 , left: width*0.07 ),
                child: Container(
                  width: width*0.8,
                  height: height*0.0017,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                    color:   Color.fromARGB(255, 38, 43, 62)
                      
                  ),
                ),
              ),
               SizedBox(height: height*0.01,),
               Row(children: [
                 Icon(Icons.share_location_rounded
                 ,color:   Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("Shipping Addresses", style: TextStyle(color:   Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.32,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

              Padding(
                padding:  EdgeInsets.only(top:height*0.01 , left: width*0.07 ),
                child: Container(
                  width: width*0.8,
                  height: height*0.0017,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                    color:   Color.fromARGB(255, 38, 43, 62)
                      
                  ),
                ),
              ),

               SizedBox(height: height*0.01,),
               Row(children: [
                 Icon(Icons.payment_rounded
                 ,color:   Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("Payment Method", style: TextStyle(color:   Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.37,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

              Padding(
                padding:  EdgeInsets.only(top:height*0.01 , left: width*0.07 ),
                child: Container(
                  width: width*0.8,
                  height: height*0.0017,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                    color:   Color.fromARGB(255, 38, 43, 62)
                      
                  ),
                ),
              ),

               SizedBox(height: height*0.01,),
               Row(children: [
                 Icon(Icons.help_outline_outlined
                 ,color:   Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("Help & Sort", style: TextStyle(color:   Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.48,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

              Padding(
                padding:  EdgeInsets.only(top:height*0.01 , left: width*0.07 ),
                child: Container(
                  width: width*0.8,
                  height: height*0.0017,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                    color:   Color.fromARGB(255, 38, 43, 62)
                      
                  ),
                ),
              ),

               SizedBox(height: height*0.01,),
               Row(children: [
                 Icon(Icons.info_outlined
                 ,color:   Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("About NeoMart", style: TextStyle(color:   Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.396,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

              Padding(
                padding:  EdgeInsets.only(top:height*0.01 , left: width*0.07 ),
                child: Container(
                  width: width*0.8,
                  height: height*0.0017,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                    color:   Color.fromARGB(255, 38, 43, 62)
                      
                  ),
                ),
              ),

               SizedBox(height: height*0.01,),
               Row(children: [
                 Icon(Icons.logout
                 ,color:   Color.fromARGB(255, 235, 223, 223),size: 25,),
                     SizedBox(width: width*0.035,),
                     Text("Logout", style: TextStyle(color:   Color.fromARGB(255, 235, 223, 223),fontSize: 16,letterSpacing: 0,fontWeight: FontWeight.w600),),
                         SizedBox(width: width*0.57,),
                      Icon(Icons.arrow_forward_ios_rounded,color:   Color.fromARGB(255, 203, 205, 206),size: 20,),
              ],),

            ],
          ),
        )
      ]),
      ),

              ],
             ),
            
            ),
          ),
       ),

       
    );
  }
}