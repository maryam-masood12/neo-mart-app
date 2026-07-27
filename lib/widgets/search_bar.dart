import 'package:flutter/material.dart';

class customSearchBar extends StatelessWidget {
  const customSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        SizedBox(width: width*0.026,),
        Container(
          width: width * 0.77,
          height: height * 0.058,
          decoration: BoxDecoration(
            color:  Color.fromARGB(255, 16, 24, 35),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: Color.fromARGB(255, 30, 39, 45),
              width: 0.5
            ),
          ),
          child: TextField(
            style: const TextStyle(color:  Color.fromARGB(255, 214, 220, 225) , fontSize: 15),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search for products, brands...",
              hintStyle: const TextStyle(
                color: Color(0xFFAAB7C4),
                fontSize: 13,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color:  Color.fromARGB(255, 203, 205, 206),
              ),
               contentPadding: EdgeInsets.symmetric(
                vertical: height * 0.02,
              ),
              
              
            ),
          ),
        ),
        SizedBox(width: width*0.024,),

         Container(
          width: width * 0.15,
          height: height * 0.058,
          decoration: BoxDecoration(
            color:  Color.fromARGB(255, 16, 24, 35),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
               color: Color.fromARGB(255, 30, 39, 45),
              width: 0.5
            ),),
            child:  Icon(Icons.tune,  color:  Color.fromARGB(255, 203, 205, 206), )
            ),


      ],
    );
  }
}