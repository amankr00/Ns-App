import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Navbar extends StatefulWidget{
@override
_NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar>{
@override
Widget build(BuildContext context) {
return Column(
children : [
Container(
        height: 80,
        decoration: BoxDecoration(
          // color: Colors.yellow,
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(
                  137, 228, 228, 228), // Color of the bottom border
              width: 3.0, // Width of the bottom border
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NS APPS INNOVATIONS',
              style: GoogleFonts.rubik(
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            // Container(
            //     // Navbar Open Framer
            //     // width: MediaQuery.of(context).size.width * 0.11,
            //     width: 200,
            //     // height: MediaQuery.of(context).size.height * 0.06,
            //     decoration: BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.all(
            //           12.0), // Add 16 pixels of padding on all sides

            //       child: Row(
            //         // Image and text

            //         mainAxisAlignment: MainAxisAlignment.spaceAround,

            //         children: [
            //           ClipRRect(
            //               child: Image.asset(
            //             'assets/images/play.png',
            //             width: 40,
            //             height: 40,
            //           )),
            //           Text('Open Play Store',
            //               style: GoogleFonts.raleway(
            //                   textStyle: TextStyle(
            //                 fontSize: 16,
            //                 letterSpacing: 0,
            //                 fontWeight: FontWeight.w500,
            //                 decoration: TextDecoration.none,
            //                 color: Color.fromARGB(255, 255, 255, 255),
            //               )))
            //         ],
            //       ),
            //     ))
          ],
        ))]);
}
}