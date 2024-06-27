import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MAnime2 extends StatefulWidget {
  const MAnime2({super.key});

  @override
  State<MAnime2> createState() => _MAnime2State();
}

class _MAnime2State extends State<MAnime2> {
  // late final AnimationController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //       vsync: this, duration: Duration(seconds: 7)); // _controller.forward();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Container(
    // width: MediaQuery.of(context).size.width * 1,
    // height: MediaQuery.of(context).size.height * 0.5,
    // width: 500,
    // height :100,
        child: LottieBuilder.asset(
      'assets/animations/line2.json',
      // controller: _controller,
      // width: 20,
      // height: 20,
      repeat: true,
      fit: BoxFit.contain,
    ));
  }
}
