import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/phases/anime2.dart';
import 'package:google_fonts/google_fonts.dart';

class Mphase2 extends StatelessWidget {
  get context => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple,
      height: MediaQuery.of(context).size.width * 1.3,
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 10, 185, 185), 
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        // Purple image and Right - side text
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
          // child:

          Container(
              width: MediaQuery.of(context).size.width * 1,
              // color: Colors.black,
              alignment: Alignment.center,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/sideloook.png',
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fitHeight,
              ))),

          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              // color: Colors.black26,
              // width: 450,
              // height: 150,
              // child : Text('The Insert Menu is your toolbox.',

              // style: TextStyle(
              // fontSize: 50,
              // letterSpacing: 0,
              // fontWeight: FontWeight.w900,
              // decoration: TextDecoration.none,))
              // )

              SizedBox(
                height: 10,
              ),

              Container(
                  // width: 450,
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.black12,

                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Analyzing ',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                          TextSpan(
                              text: 'client needs',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color(0xff721FF9),
                              )),
                          TextSpan(
                              text: ' for projects.',
                              style: TextStyle(
                                fontSize: 50,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ))
                        ],
                      ),
                    )
                        .animate()
                        .fade(duration: 2000.ms)
                        .slideX(begin: 5, end: 0),
                  )),

              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    // width: 550,
                    width: MediaQuery.of(context).size.width * 0.7,
                    //  height: MediaQuery.of(context).size.height * 0.7,
                    // height: 300,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Anime2(),
                                Container(
                                  // color : Colors.blueAccent,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  // height: MediaQuery.of(context).size.height * 0.3,
                                  child: Text(
                                      "Conduct stakeholder interviews and surveys to identify client goals, pain points, and requirements for a clear project scope statement.",
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ))),
                                ),
                              ]),
                        ]),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
