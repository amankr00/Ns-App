import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class Mphase5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color.fromARGB(255, 141, 202, 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 40,),
          Container(
            // width: 750,
            // height: 700,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.purple,
            child: ClipRRect(
                child: Image.asset(
              'assets/images/lowlogo3.png',
              fit: BoxFit.fitWidth,
            )),
          ),
          // ),
      
          Padding(padding: EdgeInsets.only(left : 45 , top : 30),
      
          child :
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  // width : 380,
                  // height: 130,
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.green,
                  child: RichText(
                  textAlign: TextAlign.start,
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Ensuring ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 3, 4),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'legal ',
                      style: TextStyle(
                        color: Color(0xff008cf7),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'data security ',
                      style: TextStyle(
                        color:  Color(0xff008cf7),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'compliance',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]))),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 30 ),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Anime2(),
                                Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    'Ensure legal and regulatory measures.',
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
                            Anime2(),
                            Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Implement robust data protection .',
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
                          // crossAxisAlignment: CrossAxisAlignment.center,
                            children :[ 
                            Anime2(),
                            Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Conduct regular security audits.',
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
            ],
          )
          )
        ],
      ),
    );
  }
}
