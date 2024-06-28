import 'dart:ui'; 

import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart'; 

class TypeWritterText extends StatefulWidget { 
const TypeWritterText({Key? key}) : super(key: key); 

@override 
State<TypeWritterText> createState() => _TypeWritterTextState(); 
} 

class _TypeWritterTextState extends State<TypeWritterText> { 
// initializing 2 variables 
int _currentIndex = 0; 
int _currentCharIndex = 0; 

// creating List 
final List<String> _strings = [ 
	"Welcome to GeeksforGeeks", 
	"Get Programming Solution Here", 
	"And more...", 
]; 
	
// creating a function and future delay for iteration 
void _typeWrittingAnimation() { 
	if (_currentCharIndex < _strings[_currentIndex].length) { 
	_currentCharIndex++; 
	} else { 
	_currentIndex = (_currentIndex + 1) % _strings.length; 
	_currentCharIndex = 0; 
	} 
	setState(() {}); 

	Future.delayed(const Duration(milliseconds: 90), () { 
	_typeWrittingAnimation(); 
	}); 
} 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	body: Center( 
		child: Container( 
		padding: const EdgeInsets.all(20), 
		width: double.infinity, 
		child: Align( 
			alignment: Alignment.centerLeft, 
			// Using string in the Text widget 
			// with the help of substring 
			child: Text( 
			_strings[_currentIndex].substring(0, _currentCharIndex), 
			style: TextStyle( 
				fontSize: 24, 
				fontStyle: FontStyle.italic, 
				fontWeight: FontWeight.bold), 
			), 
		), 
		), 
	), 

	// whenever the floating action button is 
	// pressed the _typeWrittingAnimation() 
	// function will be called 
	floatingActionButton: FloatingActionButton( 
		onPressed: _typeWrittingAnimation, 
		child: const Icon(Icons.play_arrow), 
	), 
	); 
} 
} 
