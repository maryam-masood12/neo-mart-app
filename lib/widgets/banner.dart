import 'package:flutter/material.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({super.key});

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.95,
      height: height * 0.22,
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
        borderRadius: BorderRadius.circular(13),
            border: Border.all(
               color:   Color.fromARGB(255, 151, 229, 254).withOpacity(0.15),
              width: 1.3
            ),
      ),
      child: Stack(
        children: [
       ClipRRect(
        borderRadius: BorderRadius.circular(13),
         child: SizedBox(
         width: width * 0.95,
         height: height * 0.22,
             child: Image.asset(
               "assets/images/backi.png",
               fit: BoxFit.cover,
             ),
           ),
       ),

  Positioned(
    top: height*0.01,
    left: width*0.25,
    child: Image.asset(
       width: width * 0.7,
         height: height * 0.17,
        "assets/images/headphone1.png",
        fit: BoxFit.cover,
      ),
  ),



          Positioned(
            top: height*0.035,
            left: width*0.025,
            child: Column(
              crossAxisAlignment: .start,
              children: [
            
                  Text("MEGA SALE" , style: TextStyle(color: Colors.white,fontSize: 22,letterSpacing: 0.5,
                            fontWeight: FontWeight.w600
                          ),),
            
                           Text("Up to 40% OFF" , style: TextStyle(  color:Color.fromARGB(255, 95, 227, 245),fontSize: 15,letterSpacing: 0.5,
                            fontWeight: FontWeight.w600
                          ),),
            
                          SizedBox(height: height*0.02),
            
                            SizedBox(
             width: width * 0.28,
             height: height * 0.043,
             child: ElevatedButton(
               onPressed: () {},
               style: ElevatedButton.styleFrom(
                 backgroundColor:  Color.fromARGB(255, 151, 229, 254),
                 elevation: 0,
                     side:  BorderSide(
                          color:Color.fromARGB(255, 81, 193, 230), 
                              width: 0.5,
                              ),
                 shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            
                 ),
               ),
               child: Center(
              child: Text(
                "Shop Now",
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 3, 12),
                  fontSize: 10.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
             ),
                     ),
            
              ],
            ),
          )
        ],
      ),
    );
  }
}