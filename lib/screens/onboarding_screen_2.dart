import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  final PageController pageController;
  const OnboardingScreen2({super.key ,  required this.pageController });


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
                    radius: 1.95,
                    colors: [
                      Color(0xFF0E2742),
                      Color.fromARGB(255, 3, 12, 21),
                      Color.fromARGB(255, 2, 7, 14), 
                      Color.fromARGB(255, 1, 5, 11),
                    ],
                    stops: [0.0, 0.35, 0.75, 1.0],
                  ),
                ),  
                 child: Column(
                  children: [
                    
             Stack(
               children: [
                 Padding(
                   padding: EdgeInsets.only(
                     top: height * 0.12,
                    //  left: width * 0.01,
                   ),
                   child: SizedBox(
                     width: width * 0.9,
                     child: Image.asset(
                       "assets/images/watchh.png",
                       fit: BoxFit.fitWidth,
                     ),
                   ),
                 ),
        
                  Positioned(
                    left: width*0.81,
                    top: height*0.06,
                    child: Text("Skip" , style: TextStyle(
                     color:  const Color.fromARGB(255, 34, 208, 231),
                       fontSize: 12,
                       fontWeight: FontWeight.w600
                     ),),
                  ),
               ],
             ),
        
        Align(
          alignment: .centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text("Smart Choices" , style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),),
            
                 Text("Better Life" , style: TextStyle(
                  color:   Color.fromARGB(255, 34, 208, 231),
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),),
            
                SizedBox(height: height*0.015,),
            
                 Text("Smart devices that make your" , 
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(
                color:  Color.fromARGB(255, 162, 163, 164),
                  fontSize: 11,
                  fontWeight: FontWeight.w600
                ),),
                 SizedBox(height: height*0.005,),
            
                 Text("life easier and better." ,
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                color: Color.fromARGB(255, 162, 163, 164),
                
                  fontSize: 11,
                  fontWeight: FontWeight.w600
                ),),
                 SizedBox(height: height*0.01,),
            
                Container(
                  width: width*0.1,
                  height: height*0.003,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , 
                  color:   Color.fromARGB(255, 21, 193, 215),),
                ),
            
            ],),
          ),
        ),
        
         SizedBox(height: height*0.03,),
        Row(
          mainAxisAlignment: .center,
          children: [
            Container(
        width: width * 0.025,
        height: 8,
        decoration: BoxDecoration(
           color: const Color.fromARGB(255, 100, 101, 101),
          borderRadius: BorderRadius.circular(20),
        ),
            ),
        
             SizedBox(width: width*0.03,),
        
        Container(
        width: width * 0.025,
        height: 8,
        decoration: BoxDecoration(
           color: const Color(0xFF15C1D7),
          borderRadius: BorderRadius.circular(20),
        ),
            ),
        
            SizedBox(width: width*0.03,),
        
             Container(
        width: width * 0.025,
        height: 8,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 100, 101, 101),
          borderRadius: BorderRadius.circular(20),
        ),
            ),
          ],
        ),
        
         SizedBox(height: height*0.035,),
        
        SizedBox(
          width: width * 0.85,
          height: height * 0.065,
          child: ElevatedButton(
            onPressed: () {
          pageController.nextPage(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
           );
            },
            style: ElevatedButton.styleFrom(
        backgroundColor:  Color.fromARGB(255, 99, 210, 247),
        foregroundColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
            ),
            child: Row(
        
        children: [
            
          Expanded(
            child: Center(
              child: Text(
                "Next",
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
        )
        
        
        
          ],
                ),
               
              ),
        ),
      ),
    );
  }
}