import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  
  const SignUpScreen({super.key});

   @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

  class _SignUpScreenState extends State<SignUpScreen> {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

  bool isobsecure = true;
  bool isobsecure_2 = true;
  bool checkbox = false;

   @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


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
                  Color.fromARGB(255, 7, 23, 41),
                  Color.fromARGB(255, 3, 12, 21),
                  Color.fromARGB(255, 2, 10, 21), 
                  Color.fromARGB(255, 3, 11, 23),
                ],
                stops: [0.0, 0.35, 0.75, 1.0],
              ),
            ),  
         
            child: Column(
            
              children: [
                   SizedBox(height: height*0.03,),
                Row(
                  children: [
                    SizedBox(width: width*0.06,),
                    Icon(Icons.arrow_back , size: 25,  color:  Color.fromARGB(255, 203, 205, 206),),
         
                     SizedBox(width: width*0.75,),
                    Icon(Icons.help_outline_rounded, size: 23,  color:  Color.fromARGB(255, 203, 205, 206),)
                  ],
                ),
         
                 SizedBox(height: height*0.015,),
         
                Padding(
                  padding:  EdgeInsets.only(left: 21 , top: height*0.08),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(children: [
                        Text("Create" , style: TextStyle(color: Colors.white,fontSize: 29.5,letterSpacing: 0.5,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: width*0.015,),
         
                       Text("Account" , style: TextStyle( color:  Colors.white,fontSize: 29.5,letterSpacing: 0.5,
                        fontWeight: FontWeight.w600
                      ),),
                      ],),
                        SizedBox(height: height*0.005,),
         
                      Text("Sign up to get started" , style: TextStyle( color: const Color.fromARGB(255, 180, 181, 182),fontSize: 13.7,letterSpacing: 0.5,
                        fontWeight: FontWeight.w500
                      ),),
         
                      SizedBox(height: height*0.03,),
         
                      SizedBox(
                        width: width*0.86,
                        child: TextField(
                          
                          style: TextStyle(
                            color: const Color.fromARGB(255, 214, 211, 211),
                            fontSize: 13,
                          ),
                      
                            decoration: InputDecoration(
                              
                              contentPadding: const EdgeInsets.symmetric(
                              vertical: 17,
                            horizontal: 16,
                              ),
                              filled: true,
                               fillColor:  Color(0xFF0E1B2E),
                                          
                               hintText: "Full Name",
                               hintStyle: TextStyle(
                               color:  Color.fromARGB(255, 188, 196, 207),
                               fontSize: 12,
                                ),
                      
                                prefixIcon: const Icon(
                                Icons.person_outline,
                                color: Color(0xFF8A97A8),
                                size: 21,
                                     ),
                      
                                      border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                color: Color.fromARGB(255, 1, 3, 5),
                                ),
                                      ),
                      
                                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                           borderSide: const BorderSide(
                                           color: Color.fromARGB(255, 35, 46, 53),
                                           width: 0.7
                        ),
                          ),
                      
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                           borderSide: const BorderSide(
                             color: Color(0xFF15C1D7),
                               width: 1.3,
                                ),
                                ),
                                          
                              
                              
                            ),
                        
                        ),
                      ),
                      SizedBox(height: height*0.015,),
         
                       SizedBox(
                        width: width*0.86,
                        child: TextField(
                            controller: emailController,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 214, 211, 211),
                            fontSize: 13,
                          ),
                      
                            decoration: InputDecoration(
                             
                              contentPadding: const EdgeInsets.symmetric(
                              vertical: 18,
                            horizontal: 16,
                              ),
                              filled: true,
                               fillColor:  Color(0xFF0E1B2E),
                                          
                               hintText: "Email",
                               hintStyle: TextStyle(
                               color:  Color.fromARGB(255, 188, 196, 207),
                               fontSize: 12,
                                ),
                      
                                prefixIcon: const Icon(
                                Icons.mail_outline,
                                color: Color(0xFF8A97A8),
                                size: 21,
                                     ),
                      
                                      border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                color: Color.fromARGB(255, 1, 3, 5),
                                ),
                                      ),
                      
                                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                           borderSide: const BorderSide(
                                           color: Color.fromARGB(255, 35, 46, 53),
                                           width: 0.7
                        ),
                          ),
                      
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                           borderSide: const BorderSide(
                             color: Color(0xFF15C1D7),
                               width: 1.3,
                                ),
                                ),
                                          
                              
                              
                            ),
                        
                        ),
                      ),
                                          
                      SizedBox(height: height*0.015,),
                                          
                       SizedBox(
                        width: width*0.86,
                       child: TextField(
                          controller: passwordController,
                      obscureText: isobsecure,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 214, 211, 211),
                        fontSize: 13,
                      ),
                        decoration: InputDecoration(
                                    
                          contentPadding: const EdgeInsets.symmetric(
                          vertical: 17,
                        horizontal: 16,
                          ),
                          filled: true,
                           fillColor:  Color(0xFF0E1B2E),
                                      
                           hintText: "Password",
                           hintStyle: TextStyle(
                           color:  Color.fromARGB(255, 188, 196, 207),
                           fontSize: 12,
                            ),
                                          
                            prefixIcon: const Icon(
                            Icons.lock_rounded,
                            color: Color(0xFF8A97A8),
                            size: 19,
                                 ),
                                          
                                  suffixIcon: IconButton(
                                            onPressed: () {
                      setState(() {
                        isobsecure = !isobsecure;
                      });
                                            },
                                            icon: Icon(
                      isobsecure?   Icons.visibility_off_outlined :Icons.remove_red_eye_outlined  ,
                      color: Color(0xFF8A97A8),
                      size: 20,
                                            ),
                                          ),
                                          
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: const BorderSide(
                            color: Color.fromARGB(255, 1, 3, 5),
                            ),
                                  ),
                                          
                                   enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(9),
                       borderSide: const BorderSide(
                                       color: Color.fromARGB(255, 35, 46, 53),
                                       width: 0.7
                                            ),
                      ),
                                          
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                       borderSide: const BorderSide(
                         color: Color(0xFF15C1D7),
                           width: 1.3,
                            ),
                            ),
                        ),
                                            
                                            ),
                                          ),
         
                                            SizedBox(height: height*0.015,),
                                          
                       SizedBox(
                        width: width*0.86,
                       child: TextField(
                      obscureText: isobsecure_2,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 214, 211, 211),
                        fontSize: 13,
                      ),
                        decoration: InputDecoration(
                                       
                          contentPadding: const EdgeInsets.symmetric(
                          vertical: 17,
                        horizontal: 16,
                          ),
                          filled: true,
                           fillColor:  Color(0xFF0E1B2E),
                                      
                           hintText: " Confirm Password",
                           hintStyle: TextStyle(
                           color:  Color.fromARGB(255, 188, 196, 207),
                           fontSize: 12,
                            ),
                                          
                            prefixIcon: const Icon(
                            Icons.lock_rounded,
                            color: Color(0xFF8A97A8),
                            size: 19,
                                 ),
                                          
                                  suffixIcon: IconButton(
                                            onPressed: () {
                      setState(() {
                        isobsecure_2 = !isobsecure_2;
                      });
                                            },
                                            icon: Icon(
                      isobsecure_2?   Icons.visibility_off_outlined :Icons.remove_red_eye_outlined  ,
                      color: Color(0xFF8A97A8),
                      size: 20,
                                            ),
                                          ),
                                          
                                  border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: const BorderSide(
                            color: Color.fromARGB(255, 1, 3, 5),
                            ),
                                  ),
                                          
                                   enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(9),
                       borderSide: const BorderSide(
                                       color: Color.fromARGB(255, 35, 46, 53),
                                       width: 0.7
                                            ),
                      ),
                                          
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                       borderSide: const BorderSide(
                         color: Color(0xFF15C1D7),
                           width: 1.3,
                            ),
                            ),
                        ),
                                            
                                            ),
                                          ),
         
                      
                        Transform.translate(offset: Offset(-10, 0),
                          child: Row(
                            
                            children: [
                              Transform.scale(
                                scale: 0.78,
                                child: Checkbox(
                              value: checkbox,
                               onChanged: (value) {
                              setState(() {
                               checkbox = value!;
                                    });
                                  },
                                 activeColor: const Color(0xFF15C1D7),
                                   checkColor:  const Color.fromARGB(255, 255, 252, 252),
                                     side: const BorderSide(
                                     color: Color(0xFF8A97A8),
                                        ),
                                        ),
                              ),
                               
                                   Transform.translate(offset: Offset(-7, 0),
                                             child: Text("I agree to the " , style: TextStyle(color: const Color.fromARGB(255, 215, 213, 213),fontSize: 11.5,letterSpacing: 0.5,
                                                         ),),
                                                  ),
                          
                                                   Transform.translate(offset: Offset(-7, 0),
                                                     child: Text("Terms & Conditions" , style: TextStyle( color:   Color.fromARGB(255, 82, 215, 232),fontSize: 11,letterSpacing: 0.5,
                                                      fontWeight: FontWeight.w600
                                                                         ),),
                                                   ),
                              
                              
                            ],
                          ),
                        ),
         
                     SizedBox(height: height*0.05,),
         
               SizedBox(
           width: width * 0.85,
           height: height * 0.067,
           child: ElevatedButton(
             onPressed: () {
               Navigator.pop(context, {
           "email": emailController.text.trim(),
           "password": passwordController.text.trim(),
         });
               
               
             },
             style: ElevatedButton.styleFrom(
               backgroundColor:  Color.fromARGB(255, 115, 205, 236),
               foregroundColor: Colors.black,
               elevation: 0,
               shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
               ),
             ),
             child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Color.fromARGB(255, 5, 3, 12),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
           ),
         ),
         
         SizedBox(height: height*0.068,),
            Row(mainAxisAlignment: .start,
              children: [
                SizedBox(width: width*0.145,),
                Text("Already have an account?" , style: TextStyle( color: const Color.fromARGB(255, 180, 181, 182),fontSize: 12.5,letterSpacing: 0.5,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(width: width*0.01,),
         
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context, "/login");
                        },
                        child: Text("Login" , style: TextStyle( color: Color.fromARGB(255, 82, 215, 232),fontSize: 12.5,letterSpacing: 0.5,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
         
              ],
            ),
             SizedBox(height: height*0.07,)
         
         
         
                    ],
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