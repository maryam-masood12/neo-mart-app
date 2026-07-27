import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/widgets/dialog.dart';
import 'package:flutter_neo_mart/widgets/stringValidation.dart';

class LoginScreen extends StatefulWidget {
  
  const LoginScreen({super.key});

   @override
  State<LoginScreen> createState() => _LoginScreenState();
}

  class _LoginScreenState extends State<LoginScreen> {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

      String? signupEmail;
      String? signupPassword;

  bool isobsecure = true;
  bool checkbox = false;
   final _key = GlobalKey<FormState>();

  

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
                          Text("Welcome" , style: TextStyle(color: Colors.white,fontSize: 30,letterSpacing: 0.5,
                          fontWeight: FontWeight.w600
                        ),),
                        SizedBox(width: width*0.015,),
                     
                         Text("Back!" , style: TextStyle( color:   Color.fromARGB(255, 143, 221, 232),fontSize: 30,letterSpacing: 0.5,
                          fontWeight: FontWeight.w600
                        ),),
                        ],),
            
                        SizedBox(height: height*0.005,),
                        
                     
                        Text("Login to continue" , style: TextStyle( color: const Color.fromARGB(255, 180, 181, 182),fontSize: 14,letterSpacing: 0.5,
                          fontWeight: FontWeight.w500
                        ),),
                     
                        SizedBox(height: height*0.03,),
                     
                        Form(
                          key: _key,
                          child:  
                          Column( crossAxisAlignment: .start,
                            children: [
                              SizedBox(
                                width: width*0.86,
                                child: TextFormField(
                                  controller: emailController,
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 214, 211, 211),
                                    fontSize: 11,
                                  ),
                              
                                   validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                 return "Email is required";
                                  } else if (!value.isValidEmail) {
                                   return "Email is invalid";
                                     }
                                     return null;
                                    },
                              
                                    decoration: InputDecoration(
                                     
                                      contentPadding: const EdgeInsets.symmetric(
                                      vertical: 18,
                                    horizontal: 16,
                                      ),
                                      filled: true,
                                       fillColor:  Color(0xFF0E1B2E),
                                                  
                                       hintText: "Email or Phone",
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
                     
                                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                                       borderSide: const BorderSide(
                                      color: Color(0xFFB04A4A),
                                       width: 1,
                                    ),
                                        ),
                     
                                        focusedErrorBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(9),
                                       borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 174, 73, 73),
                                       width: 1,
                                    ),
                                        ),
                     
                                        errorStyle: TextStyle(
                                     color: Color.fromARGB(255, 174, 73, 73),
                                           fontSize: 9,
                                           ),
                                      
                                    ),
                                
                                ),
                              ),
                     
                              SizedBox(height: height*0.015,),
                     
                               SizedBox(
                            width: width*0.86,
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: isobsecure,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 214, 211, 211),
                                fontSize: 12,
                              ),
                     
                               validator: (value) {
                        if(value==null || value.isEmpty){
                          return "Password is required";
                        }
                        return null;
                      },
                                decoration: InputDecoration(
                                  // isDense: true,
                     
                                  contentPadding: const EdgeInsets.symmetric(
                                  vertical: 18,
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
                              isobsecure?   Icons.visibility_off_outlined  :Icons.remove_red_eye_outlined  ,
                              color: Color(0xFF8A97A8),
                              size: 22,
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
                     
                                    errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                                       borderSide: const BorderSide(
                                      color: Color(0xFFB04A4A),
                                       width: 1,
                                    ),
                                        ),
                     
                                        focusedErrorBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(9),
                                       borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 174, 73, 73),
                                       width: 1,
                                    ),
                                        ),
                     
                                        errorStyle: TextStyle(
                                     color: Color.fromARGB(255, 174, 73, 73),
                                           fontSize: 9,
                                           ),
                                  
                                ),
                            
                            ),
                          ),
                            ],
                          ),
                     
                          
                          ),
                     
                        
                          Row(
                            mainAxisAlignment: .spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Transform.translate(offset: Offset(-31, 0),
                                    child: Transform.scale(
                                      scale: 0.85,
                                      child: Checkbox(
                                    value: checkbox,
                                     onChanged: (value) {
                                    setState(() {
                                     checkbox = value!;
                                          });
                                        },
                                       activeColor: const Color(0xFF15C1D7),
                                         checkColor:  Color.fromARGB(255, 13, 26, 44),
                                           side: const BorderSide(
                                           color: Color(0xFF8A97A8),
                                              ),
                                              ),
                                    ),
                                  ),
                                   
                                 Transform.translate(
                                  offset: Offset(-38, 0),
                                   child: Text("Remember me" , style: TextStyle(color: const Color.fromARGB(255, 215, 213, 213),fontSize: 11,letterSpacing: 0.5,
                                                         fontWeight: FontWeight.w600
                                                       ),),
                                 ),
                     
                                                     ],),
                     
                                                     SizedBox(width: width*0.06,),
                                                  
                              
                                                   TextButton(onPressed: (){},
                               child: Text("Forget Password?" , style: TextStyle( color:   Color.fromARGB(255, 82, 215, 232),fontSize: 11,letterSpacing: 0.5,
                                fontWeight: FontWeight.w600
                                                   ),),
                                                   ),
                              
                              
                            ],
                          ),
                     
                                    SizedBox(height: height*0.05,),
                     
                 SizedBox(
             width: width * 0.85,
             height: height * 0.067,
             child: ElevatedButton(
               onPressed: () {
                 if (_key.currentState!.validate()) {
            if(emailController.text.trim() ==signupEmail && passwordController.text.trim()==signupPassword){
              Navigator.pushNamedAndRemoveUntil(
            context,
            "/home",
            (route) => false,
                 );
            } else {
      showLoginErrorDialog(context);
                   }
                 }
                 
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor:  Color.fromARGB(255, 99, 210, 247),
                  foregroundColor: Colors.black,
                 elevation: 0,
                 shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
                 ),
               ),
               child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 3, 12),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
             ),
                     ),
                     
                     SizedBox(height: height*0.02,),
                     
              Row(
              
                children: [
                  SizedBox(width: width*0.018,),
                  Container(
                    width: width*0.36,
                    height: 1,
                     color: Color.fromARGB(255, 19, 33, 52),
              
                  ),
                  SizedBox(width: width*0.025,),
              
                    Text(
              "OR",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                letterSpacing: 0,
                height: 2,
               color:  Color.fromARGB(255, 188, 196, 207),
              ),
                    ),
                     
                     SizedBox(width: width*0.025,),
              
              Container(
                    width: width*0.36,
                    height: 1,
                     color: Color.fromARGB(255, 19, 33, 52),
              
                  ),
                ],
              ),
                     
              SizedBox(height: height*0.025,),
                     
              Transform.translate(
                offset: Offset(-15, 0),
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Container(
                      width: width*0.23,
                      height: height*0.079,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 22, 37),
                       
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 31, 40, 46),
                          width: 1,
                        ),
                      ),
                    child:   Padding(
                     padding: const EdgeInsets.all(16),
            child: Image.asset(
                     "assets/images/G.png",
             fit: BoxFit.contain,
              ),
                )
                      
                    ),
                
                     Container(
                      width: width*0.23,
                      height: height*0.079,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 22, 37),
                       
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                           color: Color.fromARGB(255, 31, 40, 46),
                          width: 1,
                        ),
                      ),
                     
                       child:   Padding(
                    padding: const EdgeInsets.all(16),
                     child: Image.asset(
               "assets/images/apple.png",
              fit: BoxFit.contain,
             ),
                )
                      
                    ),
                
                     Container(
                      width: width*0.23,
                      height: height*0.079,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 22, 37),
                       
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 31, 40, 46),
                          width: 1,
                        ),
                      ),
                     
                       child: Center(
                   child: Image.asset(
                      "assets/images/f.png",
                          width: width * 0.1,
                           height: height * 0.035,
                           
                           ),
                            ),
                      
                    ),
                
                
                
                  ],
                ),
              ),
                     
              SizedBox(height: height*0.067,),
                     
              Row(mainAxisAlignment: .start,
                children: [
                  SizedBox(width: width*0.15,),
                  Text("Don't have an account?" , style: TextStyle( color: const Color.fromARGB(255, 180, 181, 182),fontSize: 12.5,letterSpacing: 0.5,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: width*0.01,),
                     
                     GestureDetector(
             onTap: () async {
             final result = await Navigator.pushNamed(context, "/signup");
                     
             if (result != null) {
               final data = result as Map<String, dynamic>;
                     
               signupEmail = data["email"]!;
               signupPassword= data["password"]!;
             }
                     },
             child: Text(
               "Sign Up",
               style: TextStyle(
                 color: Color.fromARGB(255, 82, 215, 232),
                 fontSize: 12.5,
                 letterSpacing: 0.5,
                 fontWeight: FontWeight.w500,
               ),
             ),
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