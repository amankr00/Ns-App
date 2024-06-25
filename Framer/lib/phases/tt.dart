// import 'package:flutter/material.dart';


// class stark extends StatefulWidget{
//   @override
//   _starkState createState() => _starkState();
// }

// class _starkState extends State<stark> {


  

//   // void startTimer() {
//   //   timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
//   //     // Check if the controller and its page are valid
//   //     if (controller.hasClients) {
//   //       final int nextPage = (controller.page!.round() + 1) % 4;
//   //       controller.animateToPage(
//   //         nextPage,
//   //         duration: Duration(milliseconds: 500),
//   //         curve: Curves.ease,
//   //       );
//   //     }
//   //   });
//   //   }
    
//       @override
//       Widget build(BuildContext context) {
//       return Row(
//       children: [
//       Text('hellhdcijgdslijc')],);
//       }


//   }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container as Button Example')),
        body: Center(
          child: SnackBarContainer(),
        ),
      ),
    );
  }
}

class SnackBarContainer extends StatefulWidget {
  @override
  _SnackBarContainerState createState() => _SnackBarContainerState();
}

class _SnackBarContainerState extends State<SnackBarContainer> {
  // Method to show the snackbar
  void _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Container tapped!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSnackbar();
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          'Tap Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
