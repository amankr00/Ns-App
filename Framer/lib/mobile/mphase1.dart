import 'package:flutter/material.dart';
import 'package:framer/mobile/appAnime.dart';
import 'package:framer/mobile/mgetMeApp.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/phases/anime4.dart';

class Mphase1 extends StatefulWidget {
  final double pRt;
  final double pLt;
  Mphase1(this.pRt, this.pLt);
  @override
  _Mphase1State createState() => _Mphase1State(pRt, pLt);
}

class _Mphase1State extends State<Mphase1> {
  final double pRt;
  final double pLt;
  _Mphase1State(this.pRt, this.pLt);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // left body

        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Column(
            
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(height:50),
                  Padding(
                      padding: EdgeInsets.only(bottom: 30.0, top: 30.0 , left : 40.0),
                      child: Container(
                      // color: Colors.purple,
                          // width: 500,
                          // height: 140,
                          width: MediaQuery.of(context).size.width * 0.7,
                          alignment: Alignment.center,
                          // height: MediaQuery.of(context).size.height * 0.27,
                          // height: MediaQuery.of(context).size.height * 0.4,
                          // ${pRt}   ${MediaQuery.of(context).size.width }
                          child: RichText(
                          textAlign: TextAlign.center,
                              text: TextSpan(children: [
                            TextSpan(children: [
                              TextSpan(
                                text: 'Transforming Your Ideas into ',
                                style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                    fontSize: 60,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'Innovative Apps ',
                                style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                    fontSize: 60,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                    color: Color(0xff2196F3),
                                  ),
                                ),
                              )
                            ]),
                          ])))),
                          // SizedBox(height: 20,),
                 
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: HoverEffectExample1()
                        .animate()
                        .fade(delay: 100.ms)
                        .slideX(begin: -5, end: 0),
                  )

                ]),
        ),

        // Right Body
        // SizedBox(height: 40,),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              // color: Colors.purple,
              alignment: Alignment.center,
              child : MAnime1(),
              
              // color: Colors.green,
              // child: ClipRRect(
              //   child: Image.asset(
              //     'assets/images/copy.png',
              //     fit: BoxFit.contain,
              //   ),
              // ))
              // ).animate().fade(duration: 500.ms).slideX(begin: 1, end: 0),
        )
        ),
      ],
    );
  }
}

