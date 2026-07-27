import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/banner.dart';
import 'package:flutter_neo_mart/widgets/custom_app_bar.dart';
import 'package:flutter_neo_mart/widgets/electronic_items_list.dart';
import 'package:flutter_neo_mart/widgets/electronic_list_list1.dart';
import 'package:flutter_neo_mart/widgets/search_bar.dart';


class HomeScreen extends StatefulWidget {
  
  const HomeScreen({super.key});

   @override
  State<HomeScreen> createState() => _HomeScreenState();
}

  class _HomeScreenState extends State<HomeScreen> {

     final List<ElectronicItem> items = [
  ElectronicItem(
    image: "assets/images/watch1.png",
    name: "Smart Watch",
   
  ),

   ElectronicItem(
    image: "assets/images/headphoni.png",
    name: "Headphones",
   
  ),

   ElectronicItem(
    image: "assets/images/cameraa.png",
    name: "Cameras",
   
  ),

   ElectronicItem(
    image: "assets/images/laptop1.png",
    name: "Laptops",
   
  ),

   ElectronicItem(
    image: "assets/images/remotee.png",
    name: "Gaming",
   
  ),

  ElectronicItem(
    image: "assets/images/drown1.png",
    name: "Drones",
   
  ),
  ];

  final List<ElectronicItem_1> items_1 = [
 
  ElectronicItem_1(
    image: "assets/images/headphone4.png",
    name: "Smart Watch ",
    description: "Series 8",
   
    price: "\$299.00",
    text: "4.8",
   
   

  ),
  ElectronicItem_1(
    text: "4.9",
    image: "assets/images/headphone5.png",
    name: "Wireless",
    description: "Headphones",
   
   price: "\$189.00"
    
    
  ),
  ElectronicItem_1(
    text: "4.6 ",
    image: "assets/images/mouse.png",
    name: "Gaming",
    description: "Mouse",
    price: "49.00"
 
   
  ),

  ElectronicItem_1(
    text: "4.7",
    image: "assets/images/camera2.png",
    name: "DSLR",
   
    description: "Camera",
   price: "\$799.00"
   
  ),

];

   
  @override
  Widget build(BuildContext context) {

     final width = MediaQuery.of(context).size.width;
     final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body:
       SafeArea(
        
         child: SingleChildScrollView(
          child: 
          Container(
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
                const CustomAppBar(),
                const customSearchBar(),
                SizedBox(height: height*0.03,),
                const CustomBanner(),

                SizedBox(height: height*0.017,),

                 Row(children: [
            SizedBox(width: width*0.032,),

             Text("Catagories", style: TextStyle(color:Colors.white,fontSize: 13,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
             SizedBox(width: width*0.60,),
               Text("View All ", style: TextStyle(color: Color.fromARGB(255, 106, 226, 242),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w600),),

          ],),

           SizedBox(height: height * 0.015,),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: height*0.14, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ItemCard(
            item: items[index],
                    ),
                  );
                },
              ),
            ),
          ),

           SizedBox(height: height*0.02,),

                 Row(children: [
            SizedBox(width: width*0.032,),

             Text("Trending Now", style: TextStyle(color:Colors.white,fontSize: 13,letterSpacing: 0.5,fontWeight: FontWeight.w700),),
             SizedBox(width: width*0.55,),
               Text("View All ", style: TextStyle(color: Color.fromARGB(255, 106, 226, 242),fontSize: 11,letterSpacing: 0,fontWeight: FontWeight.w600),),

          ],),

            SizedBox(height: height*0.015,),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: height*0.23, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items_1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ItemCard_1(
            item_1: items_1[index],
                    ),
                  );
                },
              ),
            ),),


              ],
            ),
          ),
               ),
       ),
         
    );
  }
}