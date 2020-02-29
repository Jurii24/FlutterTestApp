import 'package:flutter/material.dart';
import 'dart:math' as math;

Color color; // values for change backgroundColor

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TestApp",
    );
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text("Test Task"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(
                () => color = Color(// Generate random color
                (math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                .withOpacity(1.0),
          ),
          child: new Text(
            "Hey there",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}