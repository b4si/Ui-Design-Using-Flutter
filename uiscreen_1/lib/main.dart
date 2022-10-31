import 'package:flutter/material.dart';
import 'package:uiscreen_1/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue[800],
        ),
      ),
      home: const ScreenHome(),
    );
  }
}
