import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/phases/snakbar.dart';
import 'package:framer/phases/tt.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverEffectExample extends StatefulWidget {
  @override
  _HoverEffectExampleState createState() => _HoverEffectExampleState();
}

bool h = false;

class _HoverEffectExampleState extends State<HoverEffectExample> {
  bool _isHovering = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool  isDownloadHovered = false;
  void cc() {
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(
            onTap: () {
              if (h == true) {
                // stark();
                cc();
              }
              // showDialog(
              //   context: context,
              //   useRootNavigator: false,
              //   // Navigator.pop(context, true),
              //   builder: (BuildContext context) {
              //     return Container(
              //         child: subscriptionForm(
              //             context, _nameController, _numberController));
              //   },
              // );
            },

            //           void _showSnackbar() {
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(
            //       content: Text('Container tapped!'),
            //       duration: Duration(seconds: 2),
            //     ),
            //   );
            // }

            // @override
            // Widget build(BuildContext context) {
            //   return GestureDetector(
            //     onTap: () {
            //       _showSnackbar();
            //     },

            child : Padding(
                  padding: EdgeInsetsDirectional.only(top: 30),
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isDownloadHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isDownloadHovered = false;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        // _showDownloadDialog(context);
                         showDialog(
                context: context,
                useRootNavigator: false,
                // Navigator.pop(context, true),
                builder: (BuildContext context) {
                  return Container(
                      child: subscriptionForm(
                          context, _nameController, _numberController));
                },
              );
                      },
                      child: Container(
                        width: 220,
                        decoration: BoxDecoration(
                          color: isDownloadHovered
                              ? Color.fromARGB(255, 252, 110, 39)
                              : Color(0xFFff5700),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color.fromARGB(51, 237, 236, 236),
                              offset: Offset(0, 2),
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 15, 5, 15),
                                child: Text(
                                  'Download app',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 0,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                margin: EdgeInsets.only(
                                    left: isDownloadHovered ? 10 : 0),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFFFFFFF),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



            // child: AnimatedContainer(
            //   duration: Duration(milliseconds: 200),
            //   width: _isHovering ? 180 * 1.05 : 180,
            //   height: _isHovering ? 50 * 1.05 : 50,
            //   decoration: BoxDecoration(
            //     color: _isHovering
            //         ? Color.fromARGB(255, 0, 140, 255)
            //         : const Color.fromARGB(255, 33, 150, 243),
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Text('Get me an app',
            //           style: GoogleFonts.raleway(
            //               textStyle: TextStyle(
            //             fontSize: 16,
            //             letterSpacing: 0,
            //             fontWeight: FontWeight.w500,
            //             decoration: TextDecoration.none,
            //             color: Color.fromARGB(255, 255, 255, 255),
            //           ))),
            //       Container(
            //         width: 20,
            //         height: 30,
            //         child: ClipRRect(
            //           child: Image.asset(
            //             'assets/images/rarrow.png',
            //             width: 20,
            //             height: 30,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          )),
    ]);
  }

  Center subscriptionForm(
      BuildContext context,
      TextEditingController nameController,
      TextEditingController numberController) {
    return Center(
      child: Stack(alignment: Alignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: MediaQuery.of(context).size.height * 0.70,
          color: Colors.purple,
          child: Stack(children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.70,
                color: Colors.white),
            Positioned(
              left: 0,
              bottom: 0,
              // right: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  // color: Colors.green,
                  child: ClipRect(
                    child: Image.asset(
                      'assets/images/ltbt.png',
                    ),
                  )),
            ),
            Positioned(
              right: 0,
              top: 0,
              // right: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // color: Colors.green,
                  child: ClipRect(
                    child: Image.asset(
                      'assets/images/rtup.png',
                    ),
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'GET YOUR OWN APP TODAY',
                      style:TextStyle(
                          fontSize: 50,
                          fontFamily: 'ArchivoBlack-Regular',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.none,
                          color: Color(0xff5C6B8B),
                        ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: Text(
                          'Your Vision , Our Code',
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily : 'arimo',
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: Color(0xff5C6B8B),
                            ),
                          ),
                        ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: ClipRect(
                        child: Image.asset('assets/images/lg.png'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Material(
                        // elevation: 3,
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xffEFF4FA),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            controller: _nameController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Enter your name',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 163, 162, 162),
                                fontSize: 18,
                                fontFamily: 'play',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.008,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Material(
                        // elevation: 3,
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xffEFF4FA),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            controller: _numberController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Enter your contact number',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 163, 162, 162),
                                fontSize: 18,
                                fontFamily: 'play',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.018,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Subscribe(_nameController, _numberController),
                    ),
                  ],
                )),
          ]),
        ),
      ]),
    );
  }

  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}

class Subscribe extends StatefulWidget {
  Subscribe(TextEditingController nameController,
      TextEditingController numberController);

  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  bool _isHovering = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool tap = false;

  void _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Container tapped! $_nameController.text $_numberController.number '),
        duration : 7000.ms,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(

            onTap: () {
              tap = true;
              h = true;

              // showDialog(
              //       context: context,
              //       builder: (BuildContext context) {
              //         return SnackbarDemo();
              //       })
              ;
              // Container(
              // width: 300,
              // color: Colors.purple,);

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text('Hello! This is a snackbar'),
              //     action: SnackBarAction(
              //       label: 'Undo',
              //       onPressed: () {
              //         // Code to execute when the action is pressed
              //       },
              //     ),
              //   ),
              // );
              _showSnackbar();
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: _isHovering ? 180 * 1.05 : 180,
              height: _isHovering ? 50 * 1.05 : 50,
              decoration: BoxDecoration(
                color: _isHovering
                    ? Color.fromARGB(201, 19, 125, 131)
                    : Color.fromARGB(255, 23, 186, 186),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.19,
                // height: MediaQuery.of(context).size.width * 0.05,
                alignment: Alignment.center,
                child: Text('SUBSCRIBE',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        letterSpacing: 2)),
              ),
            ),
          )),
    ]);
  }

  Center subs(BuildContext context, TextEditingController nameController,
      TextEditingController numberController) {
    // void _printValue() {
    //   print('Entered value: ${_nameController.text}');
    // }

    // String name1 = _nameController.text;
    return Center(
        child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(50)),
          alignment: Alignment.center,
          child: Text('We will contact you soon! ${_nameController.text}',
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.white)),
        )
      ],
    ));
  }

  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
