import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/screens/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with TickerProviderStateMixin {
  late AnimationController ringController;
   late AnimationController controller;
  late Animation<double> opacityAnimation;

  @override
  void initState() {

    ringController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();

     controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

  opacityAnimation = Tween<double>(
    begin: 0, end: 1,).animate(controller);
  controller.forward();

  
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }
   @override
    void dispose() {
      ringController.dispose();
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
        child: Stack(
          children: [
           Container(
            width: width,
            height: height,
        
             decoration: const BoxDecoration(
            gradient: RadialGradient(
        center: Alignment(0.0, -0.24),
        radius: 1.25,
        colors: [
          Color(0xFF0E2742),
          Color.fromARGB(255, 2, 8, 14),
          Color.fromARGB(255, 1, 6, 11), 
          Color.fromARGB(255, 1, 5, 11),
        ],
        stops: [0.0, 0.35, 0.75, 1.0],
            ),
          ),
          ),
        
         
        
          Positioned(
          top: height * 0.18,
          left: width * 0.24,
          right: width * 0.24,
          child: AnimatedBuilder( animation: opacityAnimation, builder: (context, child) =>Opacity(opacity: opacityAnimation.value , 
            child: Image.asset(
        "assets/images/logo_1.png",
        width: width * 0.36,
        height: height * 0.36,
        fit: BoxFit.cover,
            ),),
          ),
        ),
        
            Positioned(
              top: height*0.52,
              left: width*0.28,
              child: Row(
                children: [
                  Text(
                          "NEO",
                          style: GoogleFonts.spaceGrotesk(
                         fontSize: 32,
                         letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                          color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width*0.005,),
        
                   Text(
                          "MART",
                          style: GoogleFonts.sora(
                         fontSize: 32,
                         letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 34, 208, 231),
                    ),
                  ),
                ],
              ),
            ),
        
            Positioned(
              top: height*0.59,
              left: width*0.30,
        
              child: Text(
             "Discover. Connect. Upgrade.",
             style: GoogleFonts.inter(
             fontSize: 10,
             color: const Color.fromARGB(255, 232, 234, 236),
             letterSpacing: 0.5,
             fontWeight: FontWeight.w400,
            ),
               ),
                  ),
        
                  Positioned(
                    top: height*0.74,
                    left: width*0.45,
                    child: RotationTransition(
                          turns: ringController,
                          child: SizedBox(
                            width: 32,
                            height: 32,
                            child: CircularProgressIndicator(
                              strokeWidth: 4,
                              strokeCap: StrokeCap.round,
                              valueColor: AlwaysStoppedAnimation(
                                 Color.fromARGB(255, 34, 208, 231),
                              ),
                              backgroundColor: const Color(0xFF1B2B3D),
                            ),
                          ),
                        ),
                  ),
        
                   Positioned(
              top: height*0.82,
              left: width*0.35,
        
              child: Text(
             "Loading experience...",
             style: GoogleFonts.inter(
             fontSize: 10,
             color: const Color.fromARGB(255, 232, 234, 236),
             letterSpacing: 0.3,
             fontWeight: FontWeight.w400,
            ),
               ),
                  ),
        
        
               
          
          
          ]
        ),
      ),

    );}}