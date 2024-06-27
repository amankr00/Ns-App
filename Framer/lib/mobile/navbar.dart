import 'package:flutter/material.dart';
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
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Rubik',
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ))]);
}
}