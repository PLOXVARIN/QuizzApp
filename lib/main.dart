import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/questions_screen.dart';
import 'package:myapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
        ),
      ),
      child: const QuestionsScreen()
    ),
  )));
}
