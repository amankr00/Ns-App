import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class Mphase3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color.fromARGB(255, 4, 144, 132),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
            child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: 60,),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.purple,
                  child: RichText(
                  textAlign: TextAlign.start,
                      text: TextSpan(children: [
                    // TextSpan(
                    //   text: 'Strategizing timelines, ',
                    //   style: TextStyle(
                    //     color: const Color.fromARGB(255, 3, 3, 3),
                    //     fontSize: 50,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    TextSpan(
                      text: 'Allocating resources and ',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 3, 3, 3),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'budgeting tasks.',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 231, 11),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]))),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                                    'Develop timelines and project milestones.',
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
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Anime2(),
                            Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Allocate resources and assign tasks.',
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
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                            children :[ 
                            // Anime2(),
                            Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Estimate costs and create budgets.',
                                style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                  // decoration: TextDecoration.none,/
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            ]
                          ),
                          
                        ]),
              )
            ]),
          ),
          Container(
              // width: 750,
              // height: 700,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/lowlogo2.png',
                fit: BoxFit.cover,
              ))),
                Container(
        // width: 200,
        height: 3,
        decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(255, 104, 105, 106), // Border color
        width: 2.0, // Border width
      ),
      borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        
      )
        ],
      ),
    );
  }
}
