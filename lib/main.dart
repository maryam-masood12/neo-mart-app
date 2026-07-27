import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/screens/main_screen.dart';
import 'package:flutter_neo_mart/screens/profile_screen.dart';
import 'package:flutter_neo_mart/screens/cart_screen.dart';
import 'package:flutter_neo_mart/screens/wish_list_screen.dart';
import 'package:flutter_neo_mart/screens/product_details_screen.dart';
import 'package:flutter_neo_mart/screens/onboarding_screen.dart';
import 'package:flutter_neo_mart/screens/sign_up_screen.dart';
import 'package:flutter_neo_mart/screens/login_screen.dart';
// import 'package:flutter_neo_mart/screens/onboarding_screen_1.dart';
// import 'package:flutter_neo_mart/screens/onboarding_screen_2.dart';
// import 'package:flutter_neo_mart/screens/onboarding_screen_3.dart';
import 'package:flutter_neo_mart/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
  "/": (context) => SplashScreen(),
  "/onboarding": (context) => OnboardingScreen(),
  "/login": (context) => LoginScreen(),
   
  "/signup": (context) => SignUpScreen(),
  "/home": (context) => MainScreen(),
  "/wishlist": (context) =>  WishListScreen(),
  "/cart":(context)=> CartScreen(),
  "/profile":(context)=> ProfileScreen(),
  "/productDetail":(context)=> ProductDetailScreen(),

},
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: SplashScreen(),
// home: OnboardingScreen3(),
// home: OnboardingScreen2(),
      // home: OnboardingScreen1(),
      // home:  LoginScreen(),
      // home: SignUpScreen(),
      // home: HomeScreen(),
      // home: WishListScreen(),
      // home: CartScreen(),
      // home: ProfileScreen(),
      // home: ProductDetailScreen(),
    );
  }
}

