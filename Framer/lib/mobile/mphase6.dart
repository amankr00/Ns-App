import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class Mphase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    // color: Color.fromARGB(255, 225, 117, 23),
    borderRadius: BorderRadius.circular(30)
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Padding(padding: EdgeInsets.only(left : 80),
          child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children : [
            SizedBox(height: 40,),
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Staying ahead with ',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: 'innovative technology ',
                      style: TextStyle(
                        fontSize: 50,
                        color:Color(0xfffe4d87),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: 'exploration. ',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
            
                  // TextSpan(
                  //     text:
                  //         '\n\nNothing that you design is lost in translation. Your creations come complete with CSS and JSX code. Framer is also the only prototyping tool that generates animation code which can be used 1:1 in production. ',
                  //     style: TextStyle(
                  //       fontSize: 25,
                  //       color: Color.fromARGB(255, 0, 0, 0),
                  //       fontWeight: FontWeight.w500,
                  //     )),
                ]))),
      
                 Padding(
                   padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                   child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Anime2(),
                                  Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      "Stay at the forefront through innovative technology exploration, researching trends, adopting new tools, and enhancing existing systems continually.",
                                      style: TextStyle(
                                        // decoration: TextDecoration.lineThrough,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        // decoration: TextDecoration.none,/
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ]),
                            
                          ]),
                 ),
      
      
      
                ]
          ),
          ),
          SizedBox(height: 40,),
          Container(
          // color: Colors.purple,
            // width: MediaQuery.of(context).size.width * 0.9,
            // height: MediaQuery.of(context).size.height * 0.9,

            child: ClipRect(
              child: Image.asset(
            // width: MediaQuery.of(context).size.width * 0.9,
                'assets/images/lowlogo4.png',
                // width: 700,
                // height: 250,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ],
      ),
    );
  }
}
