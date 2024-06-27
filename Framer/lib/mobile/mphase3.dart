import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class Mphase3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.width * 1.3,
      decoration: BoxDecoration(
          // color: Color.fromARGB(166, 231, 185, 78),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.purple,
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                'Develop timelines and milestones, allocate resources, assign tasks, estimate costs, and create budgets to ensure efficient project management.',
                                style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  // decoration: TextDecoration.none,/
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ]),
                    ]),
              )
            ]),
          ),
          Container(
              // color: Colors.purple,
              // width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.height * 0.4,
              child: ClipRect(
                  child: Image.asset(
                      // width: MediaQuery.of(context).size.width * 0.8,
                      // height: MediaQuery.of(context).size.height * 0.6,
                      'assets/images/lowlogo2.png',
                      fit: BoxFit.fitWidth))),
        ],
      ),
    );
  }
}
