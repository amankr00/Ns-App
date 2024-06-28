import 'dart:async';
import 'package:framer/mobile/appAnime.dart';
import 'package:framer/mobile/lineAnime.dart';
import 'package:framer/mobile/mphase1.dart';
import 'package:framer/mobile/mphase2.dart';
import 'package:framer/mobile/mphase3.dart';
import 'package:framer/mobile/mphase5.dart';
import 'package:framer/mobile/mphase6.dart';
import 'package:framer/mobile/mphase7.dart';
import 'package:framer/mobile/mphaseViewer.dart';
import 'package:framer/mobile/navbar.dart';
import 'package:framer/mobile/test.dart';
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
import 'package:framer/phases/video.dart';
import 'package:framer/testHome.dart';
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

    // void _toggleDrawer() {
    //   setState(() {
    //     _isDrawerOpen = !_isDrawerOpen;
    //   });
    // }

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
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'work-sans',
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 148, 146, 146),
                          )))
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
              // VideoPlayerScreen(),
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
        // backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Stack(
        children: [
      Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          // color: Colors.purple,
          // height: 300,
          child: ClipRect(
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.fill),
          )),
      Column(children: [
        Navbar(),
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Stack(children: [
                // Container(
                //       width: MediaQuery.of(context).size.width * 1,
                //       // height: MediaQuery.of(context).size.height * 1,
                //       // height: 300,
                //       color: Color.fromRGBO(255, 255, 255, 0.7),
                //       child: ClipRect(
                //           child: Opacity(
                //         opacity:
                //             0.3, // Adjust the opacity level (0.0 - fully transparent, 1.0 - fully opaque)
                //         child: Image.asset('assets/images/pex.jpg'),
                //       ))),
                Mphase1(pRt, pLt),
              ])),
              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 30,
              ),
              Mphase2(),
              // ScrollAnimatedWidget(),

              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 30,
              ),
              Mphase3(),
              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 30,
              ),
              // MPhase4Viewer(),
              Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.8,
                    color: Color.fromRGBO(243, 239, 239, 0.561),
                    // child: MPhase4Viewer()
                  )),
              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 17,
              ),
              Mphase5(),
              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 30,
              ),
              Mphase6(),
              SizedBox(
                height: 30,
              ),
              MAnime2(),
              SizedBox(
                height: 30,
              ),
              Mphase7(),
              
            ],
          )),
        )
      ])
    ]));
  }
}
