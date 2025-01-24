import 'package:flutter/material.dart';
import 'package:myapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: StartScreen(), // เปลี่ยนเป็น StartScreen เป็นจุดเริ่มต้น
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.purple,
    ),
  ));
}
