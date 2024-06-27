import 'dart:async';
import 'package:framer/mobile/mphase1.dart';
import 'package:framer/mobile/mphase2.dart';
import 'package:framer/mobile/navbar.dart';
import 'package:framer/phases/anime3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/customWidget.dart';
import 'package:framer/phases/phase2.dart';
import 'package:framer/phases/phase3.dart';
import 'package:framer/phases/phase4Viewer.dart';
import 'package:framer/phases/phase1.dart';
import 'package:framer/phases/snakbar.dart';
import 'package:framer/phases/t.dart';
import 'package:framer/phases/phase5.dart';
import 'package:framer/phases/phase6.dart';
import 'package:framer/phases/phase7.dart';
import 'package:framer/phases/t.dart';
import 'package:framer/phases/t1.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
// class IconItem extends StatefulWidget {
//   final String appName;
//   final String imageUrl;
//   IconItem(this.appName, this.imageUrl);

//   @override
//   _IconItemState createState() => _IconItemState(imageUrl);
// }

// class _IconItemState extends State<IconItem> {
//   bool _isHovered = false;
//   final String imageUrl;

//   _IconItemState(this.imageUrl);

//   @override

class HomeMain extends StatefulWidget {
  final String title;
  HomeMain({Key? key, required this.title}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  final PageController controller = PageController(initialPage: 1);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      // Check if the controller and its page are valid
      if (controller.hasClients) {
        final int nextPage = (controller.page!.round() + 1) % 4;
        controller.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // appBar: AppBar(
        //   toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment
        //         .spaceAround, // Aligns widgets horizontally with space between them
        //     children: <Widget>[
        //       // Add an icon or any widget you want
        //       // The title of the AppBar
        //       // Icon(Icons.settings),
        //       Text(
        //         'NS APPS INNOVATIONS',
        //         style: GoogleFonts.rubik(
        //             fontSize: 20,
        //             letterSpacing: 0,
        //             fontWeight: FontWeight.w400,
        //             decoration: TextDecoration.none,
        //             color: const Color.fromARGB(255, 0, 0, 0)),
        //       ),

        //       Container(
        //           // Navbar Open Framer
        //           width: MediaQuery.of(context).size.width * 0.11,
        //           height: MediaQuery.of(context).size.height * 0.06,
        //           decoration: BoxDecoration(
        //             color: Colors.blue,
        //             borderRadius: BorderRadius.circular(20),
        //           ),
        //           child: Padding(
        //             padding: EdgeInsets.all(
        //                 12.0), // Add 16 pixels of padding on all sides

        //             child: Row(
        //               // Image and text

        //               mainAxisAlignment: MainAxisAlignment.spaceAround,

        //               children: [
        //                 ClipRRect(
        //                     child: Image.asset(
        //                   'assets/images/play.png',
        //                   width: 40,
        //                   height: 40,
        //                 )),
        //                 Text('Open Play Store',
        //                     style: GoogleFonts.raleway(
        //                         textStyle: TextStyle(
        //                       fontSize: 16,
        //                       letterSpacing: 0,
        //                       fontWeight: FontWeight.w500,
        //                       decoration: TextDecoration.none,
        //                       color: Color.fromARGB(255, 255, 255, 255),
        //                     )))
        //               ],
        //             ),
        //           )) // Another icon or widget
        //     ],
        //   ),
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Text(
        //           'NS APPS INNOVATIONS',
        //           style: TextStyle(color: Colors.white, fontSize: 24),
        //         ),
        //         decoration: BoxDecoration(
        //           color: Colors.blue,
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text('Home'),
        //         onTap: () {
        //           // Navigate to home screen
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.settings),
        //         title: Text('Settings'),
        //         onTap: () {
        //           // Navigate to settings screen
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => MobileLy(),
              desktop: (BuildContext context) =>
                  completePage(context, "tablet"),
              tablet: (BuildContext context) => completePage(context, "mobile"),
            )),
      ),
    );
  }

  SingleChildScrollView completePage(BuildContext context, String type) {
    startTimer();
    double pRt = MediaQuery.of(context).size.width;
    double pLt = MediaQuery.of(context).size.width;
    bool _isDrawerOpen = false;

    void _toggleDrawer() {
      setState(() {
        _isDrawerOpen = !_isDrawerOpen;
      });
    }

    // void pr(int prt)
    // {
    // print(prt);
    // }
    if (type == "Mobile") {
      pRt = pRt * 0.02;
    } else if (type == "tablet") {
      pRt = pRt * 0.08;
      pLt = pLt * 0.02;
    } else {
      if (pRt < 1000) {
        pRt = pRt * 0.14;
        pLt = pLt * 0.4;
      } else {
        pRt = 150;
        pLt = 50;
      }
    }

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Anime3(),
          // App2(),
          // PopupWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Button(),
              // zero(),
              // AnimatedTextExample(),
              // para(initialText: 'Hello, Starkiee!'),

              // Navbar
              navbar(),
              // Lower Body  -> 1st phase
              // Page1(),
              // MyCustomWidget(),
              // HomeScreen(),
              // Cal(),
              Phase1(pRt, pLt),

              SizedBox(
                height: 20,
              ),

              Container(
                      child: Text(
                          'Trusted by some of the best in the business', //$pRt'
                          style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 148, 146, 146),
                          ))))
                  .animate()
                  .fade(delay: 100.ms)
                  .slideY(begin: -100, end: 0),
              // .shake(),

              SizedBox(
                height: 50,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconItem('IRIS APP', 'assets/images/iris.png'),
                IconItem('TaskFlow App', 'assets/images/taskflow.png'),
                IconItem('Samadhan App', 'assets/images/samadhan.png'),
                IconItem('Maa App', 'assets/images/maa.png'),
                IconItem('Samaksh', 'assets/images/samaksh.png'),
                IconItem('Home Insights', 'assets/images/home.png'),
                IconItem('Shravani', 'assets/images/shravani.png'),
                IconItem('Prathmikta', 'assets/images/prathmikta.png'),
                IconItem('DakPad', 'assets/images/da.png'),
              ]),
              // App()
              // .animate()
              //       .fade(delay: 100.ms)
              //       .slideY(begin: 1,end: 0),

              SizedBox(
                height: 70,
              ),

              // Phase 2

              phase2(),

              // 3rd phase

              phase3(),

              // 4th phase
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Container(
                      height: 450,
                      color: Color.fromRGBO(243, 239, 239, 0.561),
                      child: Phase4Viewer())),

              // 5th phase

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: phase5(),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 100),
                child: phase6(),
              ),

              phase7(),
              // test(),
            ],
          ),
        ]));

    // final controller = PageController(initialPage: 1);
  }
}

class IconItem extends StatefulWidget {
  final String appName;
  final String imageUrl;
  IconItem(this.appName, this.imageUrl);

  @override
  _IconItemState createState() => _IconItemState(imageUrl);
}

class _IconItemState extends State<IconItem> {
  bool _isHovered = false;
  final String imageUrl;

  _IconItemState(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovered ? 1.4 : 1.0),
        transformAlignment: Alignment.center,
        child: Container(
            width: 100,
            //alignment: Alignment.center,
            child: ClipRect(
                child: Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ))),
      ),
    );
  }
}

class MobileLy extends StatefulWidget {
  @override
  _MobileLyState createState() => _MobileLyState();
}

class _MobileLyState extends State<MobileLy> {
  @override
  Widget build(BuildContext context) {
    String ty = "MOB";
    double pRt = MediaQuery.of(context).size.width;
    double pLt = MediaQuery.of(context).size.width;
    if (ty == "Mobile") {
      pRt = pRt * 0.02;
    } else if (ty == "tablet") {
      pRt = pRt * 0.08;
      pLt = pLt * 0.02;
    } else {
      if (pRt < 1000) {
        pRt = pRt * 0.14;
        pLt = pLt * 0.4;
      } else {
        pRt = 150;
        pLt = 50;
      }
    }
    return Scaffold(
    // backgroundColor: Colors.blue,
    body : SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Navbar(),
          Mphase1(pRt, pLt),
          Mphase2(),
        ],
      ),
    )
    );
  }
}
