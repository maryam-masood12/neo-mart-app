import 'package:flutter/material.dart';

void showCartDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (dialogContext) => Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
           gradient: RadialGradient(
                center: Alignment(0.0, -0.25),
                radius: 1,
                colors: [
                  Color.fromARGB(255, 7, 23, 41),
                  Color.fromARGB(255, 7, 17, 24),
                  Color.fromARGB(255, 2, 9, 18), 
                  Color.fromARGB(255, 2, 9, 19),
                ],
                stops: [0.0, 0.35, 0.75, 1.0],
              ),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color:  Color.fromARGB(255, 142, 221, 247).withOpacity(0.25),
          ),
          boxShadow: [
            BoxShadow(
              color:  Color.fromARGB(255, 142, 221, 247).withOpacity(0.15),
              blurRadius: 35,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Icon
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:   Color.fromARGB(255, 142, 221, 247).withOpacity(.08),
                border: Border.all(
                  color:   Color.fromARGB(255, 142, 221, 247),
                ),
              ),
              child: const Icon(
                Icons.check_circle,
                color:  Color.fromARGB(255, 142, 221, 247),
                size: 34,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Order Successful!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
             " Order placed successfully!\nThank you for shopping with\n Neo Mart.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(.65),
                fontSize: 13,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                   backgroundColor:   Color.fromARGB(255, 142, 221, 247),
                   foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
                child: Text(
                  "Continue Shopping",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color:   Color.fromARGB(255, 142, 221, 247),
                ),
                foregroundColor:   Color.fromARGB(255, 142, 221, 247),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                 Navigator.pushReplacementNamed(context, "/home");
              },
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    ),
  );
}