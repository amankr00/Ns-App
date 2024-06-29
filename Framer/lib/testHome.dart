import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart";
import "package:responsive_builder/responsive_builder.dart";

class TapToScroll extends StatelessWidget {
  TapToScroll({Key? key}) : super(key: key);

  final List<Color> _color = const [
    Color(0xffFF5701),
    Color.fromARGB(255, 1, 217, 255),
    Color.fromARGB(255, 1, 158, 255),
    Color.fromARGB(255, 255, 1, 145),
    Color.fromARGB(255, 192, 255, 1),
    Color.fromARGB(255, 1, 31, 255),
    Color.fromARGB(255, 1, 255, 115),
    Color.fromARGB(255, 230, 255, 1),
    Color.fromARGB(255, 242, 1, 255),
  ];

  final _containerHeight = 300.0 ;
  final _containerwidth = 400.0 ;
  final ScrollController _scrollController = ScrollController();

  void _scrollToTap(int index) {
    _scrollController.animateTo(index * _containerHeight,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Hori
        Container(
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _color.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _scrollToTap(index);
                    },
                    child: Container(
                      height: _containerHeight,
                      width: 50,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      color: _color[index],
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                            fontSize: 20, decoration: TextDecoration.none),
                      ),
                    ),
                  );
                })),

        // ver

        Expanded(
            child: ScrollTransformView(
                  children : [ 
                  ScrollTransformItem(
                  builder: (scrollOffset){
                  final offScreenPercentage = min(scrollOffset / _containerHeight , 1.0);
                  return Container(
                  // width: 300,
                  alignment: Alignment.center,
                      // height: _containerHeight, 
                      height: _containerHeight - (_containerHeight * 0.5 * offScreenPercentage), 
                      width: _containerwidth - (_containerwidth * 0.5 * offScreenPercentage), 

                      color: Colors.purple,
                      child: ClipRect(
                      child : Image.asset('assets/images/b.jpg',
                      )));},
                      offsetBuilder: (scrollOffset) { 
                       final offScreenPercentage = min(scrollOffset / _containerHeight , 1.0);
                       final heightShrinkageAmount =  _containerHeight - (_containerHeight * 0.2 * offScreenPercentage);
                       final bool startMovingImage = scrollOffset >= _containerHeight;
                       final double onScreenOffset = scrollOffset + heightShrinkageAmount/2;
                      return Offset(0, !startMovingImage? onScreenOffset : onScreenOffset - ( scrollOffset - heightShrinkageAmount));
                      }),
                  ScrollTransformItem(
                  builder: (scrollOffset){
                  return Container(
                  alignment: Alignment.center,
                      height: _containerHeight, 
                      
                      color: Color.fromARGB(97, 73, 59, 75),
                      child: const Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum  ",
                      style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);},
                      offsetBuilder: (scrollOffset) => Offset(0, -_containerHeight+90),),
                  
                  ScrollTransformItem(
                  builder: (context){
                  return Container(
                  alignment: Alignment.center,
                      height: _containerHeight, 
                      color: Color.fromARGB(72, 39, 176, 76),
                      child: const Text("Item",
                      style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  ScrollTransformItem(
                  builder: (context){
                  return Container(
                  alignment: Alignment.center,
                      height: _containerHeight, color: Color.fromARGB(91, 176, 165, 39),
                      child: const Text("Item",
                      style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  ScrollTransformItem(
                  builder: (context){
                  return Container(
                  alignment: Alignment.center,
                      height: _containerHeight, color: Color.fromARGB(101, 176, 108, 39),
                      child: const Text("Item",
                      style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                  ScrollTransformItem(
                  builder: (context){
                  return Container(
                  alignment: Alignment.center,
                      height: _containerHeight, color: Color.fromARGB(106, 176, 39, 73),
                      child: const Text("Item",
                      style: TextStyle(fontSize: 24, decoration: TextDecoration.none),),);}),
                      ]
                ))
      ],
    ));
  }
}
