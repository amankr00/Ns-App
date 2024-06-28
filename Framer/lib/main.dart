import 'package:flutter/material.dart';
import 'package:framer/home.dart';
import 'package:framer/phases/anime2.dart';
import 'package:framer/testHome.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
// WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NS APPS INNOVATIONS',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.archivoBlack().fontFamily),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeMain(title: 'Ns',),
        // '/' : (context) => TypeWritterText(),
      },
    );
  }
}
